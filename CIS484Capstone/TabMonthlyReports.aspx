﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TabMonthlyReports.aspx.cs" Inherits="Tableau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" Width="67px" />
    <div class='tableauPlaceholder' id='viz1540499143308' style='position: relative'>
            <noscript>
                <a href='#'>
                    <img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ta&#47;Tableau_Program&#47;PhysicalPrograms&#47;1_rss.png' style='border: none' />

                </a>

            </noscript>
            <object class='tableauViz'  style='display:none;'>
                <param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> 
                <param name='embed_code_version' value='3' /> <param name='site_root' value='' />
                <param name='name' value='Tableau_Program&#47;PhysicalPrograms' />
                <param name='tabs' value='no' /><param name='toolbar' value='yes' />
                <param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ta&#47;Tableau_Program&#47;PhysicalPrograms&#47;1.png' /> 
                <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' />
                <param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='filter' value='publish=yes' /></object></div>               
    <script type='text/javascript'>                    
        var divElement = document.getElementById('viz1540499143308');
        var vizElement = divElement.getElementsByTagName('object')[0];
        vizElement.style.width = '1000px'; vizElement.style.height = '827px';
        var scriptElement = document.createElement('script');
        scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';
        vizElement.parentNode.insertBefore(scriptElement, vizElement);               

    </script>
        
   

        
   
</asp:Content>

