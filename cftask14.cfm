<cfif structKeyExists(form,'Submit')>
    <cfset name = form.name>
    <cfset description = form.description>
    <cfset image = form.image>
    <cfdump var =#image#>

    <cfif len(trim(image))>
      
      <cfif>
        <p>#file.length#</p>
      <cfelse>
        <cffile action="upload"
        fileField="image"
        accept="image/png, image/gif, image/jpeg" 
        nameconflict="MAKEUNIQUE"
        destination="C:\coldFusion2021\cfusion\wwwroot\CF_TASK\uploads\">
        <p>Thankyou, your file has been uploaded.</p>

      </cfif>



    </cfif>


</cfif>

<html>
    <head>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>CF TASKS</title>
    </head>
    <style>
    .texts{
        width:100%;
    }
    </style>
    <body>
        <section>
            <div class="main-container">
                <div class="card">
                    <h3 class="heading">CF TASK 14 FORM</h3>
                    <cfif isDefined("arrayAlert") AND NOT arrayIsEmpty(arrayAlert)>
                        <cfloop array = #arrayAlert# index = "value">
                            <div class="alert">
                                <cfoutput>
                                    <p>#value#<p>
                                </cfoutput>
                            </div>
                        </cfloop>
                    </cfif>
                    <cfform name="cftask_1" enctype="multipart/form-data" action="">
                        <div class="form-control">
                            <cfinput type="text" placeholder="Image Name"
                             name="name">
                        </div>
                        <div class="form-controls">
                            <cftextarea rows="5" cols="5" class="texts" name="description"  placeholder="description"/>
                        </div>
                        <div class="form-control">
                            <cfinput type="file" placeholder="Upload Image"
                             name="image">
                        </div>
                        <div class="form-btn">
                            <cfinput type="submit" class="btn" name="Submit">
                        <div>
                    </cfform>
                </div>
        </section>
    </body>
</html>