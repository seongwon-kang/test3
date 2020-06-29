<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!doctype html>
<html lang="utf-8">
    <head>
        <tiles:insertAttribute name="header"/>
        <tiles:insertAttribute name="aside"/>
    </head>
    <body>
        <tiles:insertAttribute name="body"/>
    </body>
        <tiles:insertAttribute name="footer"/>

</html>

