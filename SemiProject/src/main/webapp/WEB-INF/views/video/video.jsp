<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
	String contextPath = request.getContextPath();
	String albumPath = "resources/icon/musicAlbumCover/";
%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=contextPath %>/resources/css/header.css">
    <link rel="stylesheet" href="<%=contextPath %>/resources/css/style.css">
    <link rel="stylesheet" href="<%=contextPath %>/resources/css/sidebar.css">
    <link rel="stylesheet" href="<%=contextPath %>/resources/css/video.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- jquery 3.7.1 -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    
<style>

 body {
    margin: 0;
    padding-top: 80px;
    padding-left: 310px;
    padding-right: 20px;
    font-family: 'Noto Sans KR', sans-serif;
    background-image: url("<%=contextPath %>/resources/images/background.png");
    background-size: cover;
    background-repeat: no-repeat;
    background-color: rgb(255, 252, 227);
  }

</style>

</head>
<meta charset="UTF-8">
<title>Quokka Player</title>
<body>
		<jsp:include page="../common/menubar-test.jsp"/>


    <main>
        <h1 class="main-title" style="color: black;">지금 듣기</h1><br>

        <div>

        <section class="video-grid">

            <div class="video-preview">
                <div>
                    <iframe width="360" height="250" src="https://www.youtube.com/embed/MIbt_Yn_rdw?si=tUN--4rIUsdwL8n4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <iframe width="360" height="250" src="https://www.youtube.com/embed/WbhK3wMXluE?si=VoVFHuxVVkT45X83" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <iframe width="360" height="250" src="https://www.youtube.com/embed/L6-uJLteKek?si=8h3XxMeaBk3dIpwQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <iframe width="360" height="250" src="https://www.youtube.com/embed/2fDzCWNS3ig?si=S4pcMem377qQq5pU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </div>
                
            </div>



                
            
        </section>

        </div>





        <div class="music-grid" onclick="location.href='list.mu?cpage=1';" style="cursor: pointer;">
            <div>
                <div class="top100part">
                <h1>쿼카 플레이어
                    <br>top 100
                </h1>
                <div class="top100info">
                    총 100곡!
                    <br><br><br>
                    플레이버튼
                </div>

            </div>
            </div>
            <div>
            	
               <table id="top100List">
			        <tr height="120">
			        
			        </tr>
			</table>
            </div>
            <div>
                <table>
                    <tr>
                        <th><img class="thumbnail" src="<%=contextPath %>/resources/images/cp.jpg"/></th>
                        <td>Nine Tracks Mind Delux<br>Charlie Puth</td>
                    </tr>
                </table>
            </div>
        </div>
        <script>
            $(function(){
                top100List();
            })
            function top100List(){
                $ajax({
                    url:"top100list.bo",
                    success: function(data){
                        drawTop100List(data);
                    },
                    error: function(data){
                        console.log("top100 ajax 실패");
                    }
                })
            }

            function drawTop100List(){
                for(let rowData of data){
                    const tr = document.createElement('tr');
                    tr.innerHTML = "<th>" + rowData.albumPath + "</th>" +
                                   "<td>" + rowData.musArt + "</td>" +
                                   "<td>" + rowData.musName + "</td>";
                }
                document.querySelector("#top100List").appendChild(tr);
            }
        </script>
    </main>
	
</body>
</html>