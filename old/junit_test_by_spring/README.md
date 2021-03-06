# Cache 
<table>
	<tr>
		<th>config</th>
		<td>
			- com.test.config.CachingConfig<br>
			- cache/ehcache.xml<br>
			- pom.xml<br>
		</td>
	</tr>
	<tr>
		<th>domain</th>
		<td> 
			- com.test.domain.TestDomain
		</td>
	</tr>
	<tr>
		<th>repository</th>
		<td> 
			- com.test.persistence.TestDao<br>
			- com.test.persistence.TestMapper<br>
		</td>
	</tr>
	<tr>
		<th>test</th>
		<td> 
			- com.test.cache.CacheTest
		</td>
	</tr>
</table>


---


# Reflection

<table>
	<tr>
		<th>test package</th>
		<td>
			in src/test/java <br>
			com.test.reflectiontest.*
		</td>
	</tr>
</table>

---



# Profile
<table>
	<tr>
		<th>annotation</th>
		<td>com.test.config.ProfileConfig</td>
	</tr>
	<tr>
		<th>xml</th>
		<td>WEB-INF/spring/persistence-context.xml</td>
	</tr>
	<tr>
		<th>state</th>
		<td>com.test.domain.EnvProfile</td>
	</tr>
	<tr>
		<th>active</th>
		<td>web.xml</td>
	</tr>
	<tr>
		<th>JUnit</th>
		<td>
			in src/test/java<br>
			com.test.environment.*
		</td>
	</tr>
</table>

---

# Read properties (properties, xml)
<table>
	<tr>
		<th>properties</th>
		<td>
			in src/main/resources <br>
			test.properties <br>
			in src/test/java <br>
			com.test.configtest.PropertiesTest
		</td>
	</tr>
	<tr>
		<th>xml</th>
		<td>
			in src/main/resources <br>
			test_config.xml <br>
			in src/test/java <br>
			com.test.configtest.XmlTest
		</td>
	</tr>
</table>

---

# ClassResource

<table>
	<tr>
		<th>test</th>
		<td>
			in src/test/java <br>
			com.test.etc.ClassResourceTest	
		</td>
	</tr>
</table>

---

# Bean init test

<table>
	<tr>
		<th>configuration</th>
		<td>com.test.config.TestConfig</td>
	</tr>
	<tr>
		<th>bean</th>
		<td>com.test.domain.TestBean</td>
	</tr>
	<tr>
		<th>JUnit TEST</th>
		<td>
			in src/test/java <br>
			com.test.etc.BeanTest
		</td>
	</tr>
</table>



# AOP

<table>
	<tr>
		<th>config</th>
		<td>
			com.test.AopConfig.java
		</td>
	</tr>
	<tr>
		<th></th>
		<td>
			**in com.test.aop** <br />
			Audience1.java<br>
			Audience2.java<br>
			Audience3.java<br>
			note.md<br>
			pics/*<br>
		</td>
	</tr>	
	<tr>
		<th>Test</th>
		<td>
			**in src/test/java/com.test.aop** <br />
			AspectTest.java<br />
		</td>
	</tr>
</table>


# WebSocket

<table>
	<tr>
		<th>Configurer</th>
		<td>			
			WEB-INF/spring/ws.context.xml (XML)<br>
			com.test.config.WsConfig (Java)									
		</td>
	</tr>
	<tr>
		<th>Handler</th>
		<td>
			com.test.ws.* <br>
		</td>
	</tr>
	<tr>
		<th>View</th>
		<td>
			WEB-INF/views/echo-ws.jsp<br>
			WEB-INF/views/chat-ws.jsp<br>
		</td>
	</tr>
</table>

---

# Security
<table>
	<tr>
		<th>Configurer</th>
		<td>
			security-context.xml <br />
			com.test.config.SecurityConfig.java
		</td>		
	</tr>
	<tr>
		<th>CustomService</th>
		<td>
			com.test.security.*
		</td>
	</tr>
	<tr>
		<th>domain</th>
		<td>
			com.test.domain.Admin
		</td>
	</tr>
	<tr>
		<th>Repository</th>
		<td>
			com.test.repository.AdminMemoryRepository
		</td>
	</tr>
	<tr>
		<th>FilterChain</th>
		<td>web.xml</td>
	</tr>
	<tr>
		<th></th>
		<td></td>
	</tr>
</table>

---

# Elastic Search
<table>
	<tr>
		<th>Config</th>
		<td>
			com.test.config.EsConfig.java <br />
			resources/elasticsearch.properties
		</td>
	</tr>
	<tr>
		<th>Entities</th>
		<td>
			com.test.domain.EsBook<br />
			com.test.domain.EsAuthor<br />
		</td>
	</tr>
	<tr>
		<th>Service</th>
		<td>
			com.test.service.EsBookService
		</td>
	</tr>		
	<tr>
		<th>Test Code</th>
		<td>
			in test, com.test.repository.EsRepositoryTest.java
		</td>
	</tr>
	<tr>
		<th>Learning Test Code</th>
		<td>
			in test, com.test.es.*
		</td>
	</tr>
</table>

---

# Request Mapping 

<table>
	<tr>
		<th>Controller</th>
		<td>
			com.test.controller.FrontController
		</td>
	</tr>
	<tr>
		<th>View(JSP)</th>
		<td>
			/views/mappingTest
		</td>
	</tr>	
</table>


# Check browser and history.go() 

<table>
	<tr>
		<th>Controller</th>
		<td>
			com.test.controller.CheckBrowserController
		</td>
	</tr>
	<tr>
		<th>View(JSP)</th>
		<td>
			/views/form <br/>
			/views/notice
		</td>
	</tr>	
</table>


# Jackson2 Learning Test
<table>
	<tr>
		<th>pom.xml</th>
		<td>
			dependency
		</td>
	</tr>
	<tr>
		<th>Learning Test</th>
		<td>
			in src/test/java <br/>
			com.test.json.JacksonDatabindTest
		</td>
	</tr>	
</table>



# Annotation test

<table>
	<tr>
		<th>package</th>
		<td>com.test.annotation.*</td>
	</tr>
	<tr>
		<th>Test</th>
		<td>src/test/java <br />
			com.test.annotation.AnnotationTest.java
		</td>
	</tr>	
</table>

---



<table>
	<tr>
		<th></th>
		<td></td>
	</tr>
	<tr>
		<th></th>
		<td></td>
	</tr>
	<tr>
		<th></th>
		<td></td>
	</tr>
	<tr>
		<th></th>
		<td></td>
	</tr>
</table>


---

# Mockito Test 
<table>
	<tr>
		<th>dependency</th>
		<td>
			- mockito-all <br>
			- spring-test <br>
			- junit			
		</td>
	</tr>
	<tr>
		<th>Controller</th>
		<td>
			- com.test.controller.UnitTestController<br>			
		</td>
	</tr>
	<tr>
		<th>Service</th>
		<td> 
			- com.test.service.UnitTestService
		</td>
	</tr>
	<tr>
		<th>Test</th>
		<td> 
			in src/test <br>
			- com.test.controller.UnitTestControllerTest
		</td>
	</tr>	
</table>