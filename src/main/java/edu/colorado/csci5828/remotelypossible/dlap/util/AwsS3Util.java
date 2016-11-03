package edu.colorado.csci5828.remotelypossible.dlap.util;


import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.auth.EnvironmentVariableCredentialsProvider;
import com.amazonaws.auth.SystemPropertiesCredentialsProvider;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.util.IOUtils;
import edu.colorado.csci5828.remotelypossible.dlap.common.Settings;

import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * Note on credentials:
 * The aws access key id should be stored in the system environmental variable AWS_ACCESS_KEY_ID.
 * The aws secret access key should be stored in the system environmental variable AWS_SECRET_ACCESS_KEY.
 */
public class AwsS3Util {

    public enum UPLOAD_TYPE {
        RESUME, COVER_LETTER
    }

    private final DateFormat currentTime = new SimpleDateFormat("ddMMyyhhmmss.SSS");

    private final AmazonS3 s3client;
    private final String s3Bucket;
    private final String resumeKeyPrefix;
    private final String coverLetterKeyPrefix;

    public AwsS3Util() {
        s3client = new AmazonS3Client(new EnvironmentVariableCredentialsProvider());
        s3Bucket = Settings.getS3Bucket();
        resumeKeyPrefix = Settings.getS3ResumeKeyPrefix();
        coverLetterKeyPrefix = Settings.getS3CoverLetterKeyPrefix();
    }

    /**
     * Upload a file to the studentuploads s3 bucket
     * @param studentFile The file to upload
     * @param type The type of the file (resume or cover letter)
     * @return The path to the file in the bucket
     */
    public String uploadStudentFile(File studentFile, UPLOAD_TYPE type) {
        final String key;
        switch (type) {
            case RESUME:
                key = generateKey(resumeKeyPrefix, studentFile.getName());
                break;
            case COVER_LETTER:
                key = generateKey(coverLetterKeyPrefix, studentFile.getName());
                break;
            default:
                throw new IllegalArgumentException("Upload type must be either RESUME or COVER_LETTER.");
        }
        s3client.putObject(new PutObjectRequest(s3Bucket, key, studentFile));
        return key;
    }

    /**
     * Get the file contents of a student file in the studentuploads s3 bucket.
     * @param key The path to the file in the bucket
     * @return An InputStream of the file contents
     */
    public InputStream downloadStudentFile(String key) {
        S3Object object = s3client.getObject(s3Bucket, key);
        return object.getObjectContent();
    }

    /**
     * Generate a key which will be used to upload a file to the studentuploads s3 bucket
     * @param prefix The folder inside the bucket to upload to
     * @param filename The filename of the user-supplied file
     * @return The generated key
     */
    private String generateKey(String prefix, String filename) {
        return prefix + filename + "-" + currentTime.format(new Date());
    }

}
