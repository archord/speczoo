<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>Home</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/mydb.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/user.css">
    <script type="text/javascript" src="<%= request.getContextPath() %>/resources/js/jquery-1.8.3.js"></script>
    <script type="text/javascript">
    </script>
</head>

<body>
<div id="container">
    <jsp:include page="/jsp/SearchService/index.jsp"></jsp:include>
</div>

<div style="position: absolute; margin-top: 150px; margin-left:38% ">
    <h2 style="margin-left:-90px ">
    Expert platform
    </h2>

    <div style="margin-left:-260px; width: 730px; position: absolute; ">
        <article>
            <br/ >
            　　The platform is a three-tier structure designed to include data-node layer, data mining layer and expert layer, as showed in Fig. 1. The core part is data mining. Before the visual inspection, the dataset will be preprocessed with various up-to-date statistical and 
            data-mining techniques. For instance, the dataset can be classified roughly as stars, galaxies or quasars according to the limited information contained in the low SNR spectra. All of the results from this layer could efficiently help the expert to inspect 
            the spectra. The expert layer provides an interface by which anyone may query and check the spectra and save the results to the data node. Finally the system can give a more reliable result by efficiently utilizing the experts’ input (one spectrum may be 
            inspected by more than one expert). The platform will be VO-compatible and integrated seamlessly with other surveys. Its client will be of diverse forms, such as Matlab-GUI, Java application, Java-applet, etc. <p/><br/>
			<br>
		DATA-MINING LAYER: The task in this layer is to classify the spectra  and  estimate  the  redshift or radial velocity with various advanced data-mining techniques, such as SVM, ANN, KNN, PCA, etc. and then save the classified data in the data-node as the public 
			data to the experts. <p/><br/>
		DATA-NODE LAYER: The data-node includes two parts, one part is based on the database, which is used to manage the catalog generated by the data-mining layer and the individual dataset (MyDB) input by the users; the other part needs enough storage space to save 
			the spectra fits files. The data node layer provides two interfaces, e.g. common database interface and the Web Service interface, by which expert layer can query and retrieve the spectra. <p/><br/>
		EXPERT LAYER: The clients with diverse forms, such as Matlab-GUI, Java-application, Java-applet, etc., can be used to display the spectra and assist the experts to inspect the spectra in this layer. These tools provide all kinds of spectral templates and 
			reference lines, which can be easily shaped at expert’s will. The redshift can be calculated in real time as the template moving and shaped. The optimal redshift can be figured out when the spectrum is best fitted with the template.
			<p/><br/>
            <br/><br/>
        </article>
    </div>

</div>
</body>
</html>