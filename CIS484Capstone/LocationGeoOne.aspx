﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LocationGeoOne.aspx.cs" Inherits="LocationGeoOne" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
  <head>
    <title>Google Maps Example</title>
    <script src="https://cdn.pubnub.com/sdk/javascript/pubnub.4.19.0.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
  </head>
  <body>
    <div class="container">
      <h1>PubNub Google Maps Tutorial - Live Flight Path</h1>
      <div id="map-canvas" style="width:600px;height:400px"></div>
    </div>

    <script>
    window.lat = 38.039303693465236;
    window.lng = -78.9137649536133;

    var map;
    var mark;
    var lineCoords = [];
      
    var initialize = function() {
      map  = new google.maps.Map(document.getElementById('map-canvas'), {center:{lat:lat,lng:lng},zoom:12});
      mark = new google.maps.Marker({position:{lat:lat, lng:lng}, map:map});
    };

    window.initialize = initialize;

    var redraw = function(payload) {
      lat = payload.message.lat;
      lng = payload.message.lng;

      map.setCenter({lat:lat, lng:lng, alt:0});
      mark.setPosition({lat:lat, lng:lng, alt:0});
      
      lineCoords.push(new google.maps.LatLng(lat, lng));

      var lineCoordinatesPath = new google.maps.Polyline({
        path: lineCoords,
        geodesic: true,
        strokeColor: '#2E10FF'
      });
      
      lineCoordinatesPath.setMap(map);
    };

    var pnChannel = "map3-channel";

    var pubnub = new PubNub({
      publishKey:   'pub-c-ccdc4b85-b3e4-4db0-b70a-c45dfb682591',
      subscribeKey: 'sub-c-976595e8-f0fe-11e8-9886-12310f425d87'
    });

    pubnub.subscribe({channels: [pnChannel]});
    pubnub.addListener({message:redraw});

    setInterval(function() {
      pubnub.publish({channel:pnChannel, message:{lat:window.lat + 0.001, lng:window.lng + 0.01}});
    }, 500);
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBg2nITIncYD46WfW9B57reDqmTwuoUH2o&callback=initialize"></script>
  </body>
</html>

</asp:Content>

