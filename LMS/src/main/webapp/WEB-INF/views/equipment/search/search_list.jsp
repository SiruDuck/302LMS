<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>비품 이름</th>
                                            <th>수량</th>
                                        </tr>
                                    </thead>                                   
                                    <tbody>
                                     
                                    <c:forEach items="${list }" var="vo" >
                                        <tr>
                                      		<td>${vo.equipment }</td>
                                            <td>${vo.equipment_num }
	                                            <a href="#" class="btn btn-secondary btn-icon-split" style="float: right;" >
		                                        	<span class="icon text-white-50">
		                                            <i class="fas fa-arrow-right"></i>
		                                        	</span>
		                                        	<span class="text">수량 변경</span>
	                                    		</a>
                                            </td>
                                        </tr>
                                     </c:forEach>
                                    </tbody>
                                </table>
