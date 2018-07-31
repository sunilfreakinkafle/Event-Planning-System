<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.edu.eventapp.entity.Events"%>
<%@page import="com.edu.eventapp.dao.EventDAO"%>
<%@page import="com.edu.eventapp.dao.impl.EventDAOImpl"%>

<!DOCTYPE html>
<html >

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> View events</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" >Event Planning System</a>
            </div>


            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">


                <!--home page ma redirect ko link admin page bata -->

                <li> <a href="../index.jsp"> Home Page</a></li>

                



               


                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Haku Kala <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                       
      
                       
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>



            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="employee_panal.jsp"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                   
                   
                    <li>
                        <a href="view_events.jsp"></i> View Event</a>
                    </li>
                    <li>
                        <a href="view_food_items.jsp"></i> View Food Items</a>
                    </li>
                    
                    <li>
                        <a href="view_decoration_items.jsp"></i> View Decoration Items</a>
                    </li>
                    <li>
                        <a href="view_members.jsp"></i> View Member</a>
                    </li>
                     <li>
                        <a href="view_time_slots.jsp"></i> Time Slots</a>
                    </li>
                       <li>
                        <a href="../emailClient.jsp"></i> Send Invitation</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                           <h1> All Event</h1>
                        </h1>
                        
                      
        <table   border= "1" class="table table-bordered table-hover table_striped" >
            <tr>
                <th>Event ID:</th>
                <th>Event Name:</th>
                <th>Start Time:</th>
                <th>End Time:</th>
                <th>Event Venue:</th>
            </tr>
            
            <%
                EventDAO etDAO= new EventDAOImpl();
                for(Events et:etDAO.getAll()){
                   %> 
                   <tr>
                       <td><%=et.getId()%></td>
                       <td><%=et.getEventName()%></td>
                       <td><%=et.getStartTime()%></td>
                       <td><%=et.getEndTime()%></td>
                       <td><%=et.getEventVenue()%></td>
                   </tr>  
              <%   
                }
            %>
                   
           
        </table>
        </div>
            
           
                        
                        
                        
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>


