<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${userInstance}">
            <div class="errors">
                <g:renderErrors bean="${userInstance}" as="list" />
            </div>
            </g:hasErrors>
            <%--<g:form action="save" method="post" enctype="multipart/form-data">--%>
			 <g:uploadForm action="save">
                <%--<g:render template="form" bean="${userInstance}"/>--%>
					<div class="dialog">
						<table>
							<tbody>

							<tr class="prop">
								<td valign="top" class="name">
									<label for="name"><g:message code="user.name.label" default="Name" /></label>
								</td>
								<td valign="top" class="value ${hasErrors(bean: userInstance, field: 'name', 'errors')}">
									<g:textField name="name"/>
								</td>
							</tr>

							<tr class="prop">
								<td valign="top" class="name">
									<label for="email"><g:message code="user.email.label" default="Email" /></label>
								</td>
								<td valign="top" class="value ${hasErrors(bean: userInstance, field: 'email', 'errors')}">
									<g:textField name="email"/>
								</td>
							</tr>

							<tr class="prop">
								<td valign="top" class="name">
									<label for="avatar"><g:message code="user.avatar.label" default="Avatar" /></label>
								</td>
								<td valign="top" class="value ${hasErrors(bean: userInstance, field: 'avatar', 'errors')}">
									<input type="file" name="avatar" id="avatar" />
								</td>
							</tr>

							</tbody>
						</table>
					</div>				
                <div class="buttons">
                    <input type="submit" />
                </div>
			 </g:uploadForm>
            <%--</g:form>--%>
        </div>
    </body>
</html>