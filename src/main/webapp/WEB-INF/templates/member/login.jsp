<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<fmt:setBundle basename="messages.commons" />
<fmt:message var="pageTitle" key="로그인" />
<c:url var="actionUrl" value="/member/login" />

<layout:main title="${pageTitle}">
<%-- 메인 내부 레이아웃   --%>
    <div class="content-box samll">
<%--    내부 레이아웃 맨위 제목    --%>
        <h1>${pageTitle}</h1>
        <form name="frmLogin" method="POST" action="${actionUrl}" target="ifrmProcess" autocomplete="off">
            <c:if test="${! empty param.redirectUrl}">
                <input type="hidden" name="redirectUrl" value="${param.redirectUrl}">
            </c:if>
            <input type="text" name="email" placeholder="<fmt:message key="이메일"/>">
            <input type="password" name="password" placeholder="<fmt:message key="비밀번호"/>">
            <div class="save-email">
                <input type="checkbox" name="saveEmail" value="true" id="saveEamil">
                <label for="saveEamil">
                    <fmt:message key="이메일_기억하기"/>
                </label>
                <button type="submit">
                    <fmt:message key="로그인"/>
                </button>
            </div>

        </form>
    </div>
</layout:main>

