<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotels Nearby | Travel Connect</title>
<link rel="stylesheet" type="text/css" href="styles.css">
<style>
body {
	font-family: 'Georgia', serif;
	margin: 0;
	padding: 0;
	text-align: center;
	background-image: url('../img/hotel-bg.jpg');
	background-size: cover;
	background-position: center;
	height: 100vh;
	color: #333;
}

header {
	padding: 20px;
	background-color: rgba(0, 0, 0, 0.6);
	color: white;
	font-size: 1.0em;
	position: fixed;
	width: 100%;
	top: 0;
	z-index: 1;
}

main {
	padding-top: 80px;
	margin: 0 auto;
	max-width: 1200px;
	color: #222;
	background: rgba(255, 255, 255, 0.9);
	border-radius: 10px;
	padding: 30px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

.section-title {
    font-size: 1.5em;
    margin-bottom: 20px;
    margin-top: 100px;
    color: #007BFF;
    font-weight: bold;
}


.hotel-list {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.hotel-item {
	width: 300px;
	margin: 15px;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 10px;
	text-align: center;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.hotel-item:hover {
	transform: translateY(-5px);
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}

.hotel-item img {
	width: 100%;
	height: 180px;
	border-radius: 10px;
	object-fit: cover;
}

.hotel-item h3 {
	margin-top: 15px;
	color: #0056b3;
	font-size: 1.8em;
}

.hotel-item p {
	color: #666;
	font-size: 1.1em;
}

.book-btn {
	margin-top: 10px;
	background-color: #28a745;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	text-decoration: none;
	font-size: 1.1em;
	transition: background-color 0.3s;
}

.book-btn:hover {
	background-color: #218838;
}

.back-link {
	margin-top: 30px;
	font-size: 1.2em;
}

.back-link a {
	color: #007BFF;
	text-decoration: none;
	font-weight: bold;
}

.back-link a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<header>
		<h1>
			Hotels Near
			<%=request.getParameter("attraction")%></h1>
	</header>

	<main>
		<h2 class="section-title">Available Hotels</h2>
		<div class="hotel-list">

			<%
			// Get the selected attraction from the request
			String attraction = request.getParameter("attraction");

			// Define hotels for different attractions
			Map<String, String[][]> hotelsData = new HashMap<>();

			// Adding hotels for Mountain Retreat
			hotelsData.put("MountainRetreat",
					new String[][] {
					{ "Mountain View Inn", "../img/hotel1.jpg",
							"Located close to the Mountain Retreat, offering breathtaking views." },
					{ "Alpine Lodge", "../img/hotel4.jpg", "A cozy lodge with spectacular mountain vistas." } });

			// Adding hotels for Seaside Paradise
			hotelsData.put("SeasideParadise", new String[][] {
					{ "Seaside Escape", "../img/hotel2.jpg",
					"Luxurious stay near the Seaside Paradise beach, perfect for sun lovers." },
					{ "Ocean Breeze Resort", "../img/hotel5.jpg", "Experience the calm ocean breeze with premium amenities." } });

			// Adding hotels for Historical City
			hotelsData.put("HistoricalCity", new String[][] {
					{ "Heritage Hotel", "../img/hotel3.jpg", "Experience culture and history near the Historical City." },
					{ "Old Town Inn", "../img/hotel6.jpg", "A charming inn located in the heart of the historical city." } });

			// Adding hotels for Eiffel Tower
			hotelsData.put("EiffelTower",
					new String[][] {
					{ "Parisian Lux", "../img/hotel7.jpg", "Luxury hotel near the Eiffel Tower with stunning city views." },
					{ "Champs Elysees Hotel", "../img/hotel8.jpg", "Stay close to the most famous avenue in Paris." } });

			// Adding hotels for Statue of Liberty
			hotelsData.put("StatueOfLiberty",
					new String[][] { { "Liberty Tower Hotel", "../img/hotel9.jpg", "Comfortable stay near the Statue of Liberty." },
					{ "Harbor View Suites", "../img/hotel10.jpg", "Enjoy views of the New York Harbor in luxury." } });

			// Adding hotels for Great Wall
			hotelsData.put("GreatWall",
					new String[][] {
					{ "Great Wall Resort", "../img/hotel11.jpg",
							"Experience a stay near the Great Wall with modern amenities." },
					{ "Emperor's Palace Hotel", "../img/hotel12.jpg",
							"Luxury accommodation with cultural significance near the Great Wall." } });

			// Get the hotels for the selected attraction
			String[][] hotels = hotelsData.getOrDefault(attraction,
					new String[][] { { "Default Hotel", "../img/default-hotel.jpg", "A great place to stay!" } });

			// Loop through the hotels and display them
			for (String[] hotel : hotels) {
			%>
			<div class="hotel-item">
				<img src="<%=hotel[1]%>" alt="<%=hotel[0]%>">
				<h3><%=hotel[0]%></h3>
				<p><%=hotel[2]%></p>
				<a href="booking.jsp?hotel=<%=hotel[0]%>" class="book-btn">Book
					Now</a>
			</div>
			<%
			}
			%>

		</div>
		<div class="back-link">
			<p>
				<a href="<%=request.getContextPath()%>/views/explore.jsp">Back to Explore</a><br>
				<a href="<%=request.getContextPath()%>/views/attractions.jsp">Back to Attractions</a>
			</p>
		</div>
	</main>

</body>
</html>
