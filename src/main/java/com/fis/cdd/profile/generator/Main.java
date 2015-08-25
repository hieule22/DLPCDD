package com.fis.cdd.profile.generator;

import java.io.File;
import java.io.IOException;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import com.fis.cdd.profile.entity.Login;
import com.fis.cdd.profile.entity.WindowsProfile;
import com.fis.cdd.profile.scantype.WindowsFileSystemAgent;
import com.fis.cdd.profile.scantype.WindowsFileSystemAgentless;
//import com.fis.cdd.profile.jaxb.WindowsFileSystemAgent;
//import com.fis.cdd.profile.jaxb.WindowsFileSystemAgentless;
//import com.fis.cdd.profile.scantype.WindowsFileSystemAgent;
//import com.fis.cdd.profile.scantype.WindowsFileSystemAgentless;


public class Main {
	
	static Login login = new Login("hao", "123");
	static WindowsProfile profile = new WindowsProfile("SMBHsh", "domainWorkgroup");
	static com.fis.cdd.profile.scantype.WindowsFileSystemAgent windowsFileSystemAgent = new WindowsFileSystemAgent(login, profile);// new WindowsFileSystemAgent(login, profile);
	static com.fis.cdd.profile.scantype.WindowsFileSystemAgentless windowsFileSystemAgentless = new WindowsFileSystemAgentless(login, profile);//new WindowsFileSystemAgentless(login, profile);

	public static void main(String[] args) throws JAXBException, IOException {
		// TODO Auto-generated method stub
//		Login login = new Login("dang van hao", "123456");
//		WindowsProfile profile = new WindowsProfile("sMBHash", "domainWorkgroup");
//		
//		WindowsFileSystemAgent obj = new WindowsFileSystemAgent(login, profile);
//		WindowsFileSystemAgentGenerator windowsFileSystemAgentGenerator = new WindowsFileSystemAgentGenerator();
//		windowsFileSystemAgentGenerator.generate("haohao.xml", obj);
		
//		StudentTest studentTest = new StudentTest();
//		System.out.println(studentTest.toString());
//		StudentTestGenerator studentTestGenerator = new StudentTestGenerator();
//		studentTestGenerator.generate("test.xml", studentTest);
		////////////////////////////////////////////////////
//		windowsFileSystemAgent.setConcurrentDeployments("concurrentDeployments");
//		windowsFileSystemAgent.setDescription("description");
//		windowsFileSystemAgent.setInstallationPath("installationPath");
//		windowsFileSystemAgent.setLogVerbosity(LogVerbosity.EXTREMELYVERBOSITY);
//		
//		marshalingExample();
//		System.out.println("************************************************");
		com.fis.cdd.profile.jaxb.WindowsFileSystemAgent windowsFileSystemXMLMarsher = new com.fis.cdd.profile.jaxb.WindowsFileSystemAgent();//new WindowsFileSystemAgent();
		windowsFileSystemXMLMarsher.marshaling("employees.xml", windowsFileSystemAgent);
		
		JAXBContext jaxbContext = JAXBContext.newInstance(WindowsFileSystemAgent.class);
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		WindowsFileSystemAgent emps = (WindowsFileSystemAgent) jaxbUnmarshaller.unmarshal( new File("employees.xml") );
		
//		System.out.println("hao--------------"+emps.getLogin().getUserName());
//		System.out.println("dang-------------"+emps.getLogin().getPassWord());
//		for(Employee emp : emps.getEmployees())
//		{
//			System.out.println(emp.getId());
//			System.out.println(emp.getFirstName());
//		}
		
//		JAXBWindowsFileSystemAgentless jaxbwindowsFileSystemAgentless = new JAXBWindowsFileSystemAgentless();
//		jaxbwindowsFileSystemAgentless.marshaling("c:/temp/wfsal.xml", windowsFileSystemAgentless);
		
	}
	
	
	
	
	
	private static void marshalingExample() throws JAXBException
	{
		JAXBContext jaxbContext = JAXBContext.newInstance(WindowsFileSystemAgent.class);
		Marshaller jaxbMarshaller = jaxbContext.createMarshaller();
 
		jaxbMarshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
 
		jaxbMarshaller.marshal(windowsFileSystemAgent, System.out);
		jaxbMarshaller.marshal(windowsFileSystemAgent, new File("c:/temp/employees.xml"));
	}

}
