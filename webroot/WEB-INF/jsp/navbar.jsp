<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<ul id="nav">
    <li><a href="/do/project/list">Project List</a></li>
    <c:choose>
      <c:when test="${sessionScope.user_profile.role == 'FACULTY_ROLE'}">
    <li><a href="/do/project/faculty">My Projects</a></li>
      </c:when>
      <c:when test="${sessionScope.user_profile.role == 'USER_ROLE' }">
    <li><a href="/do/student/application">My Applications</a></li>
      </c:when>
    </c:choose>
    <li><a href="/do/matrix">Matrix</a></li>
    <li><a href="/do/fakeme">Fake Me</a></li>
    <li><a href="/do/logout">Logout</a></li>
</ul>