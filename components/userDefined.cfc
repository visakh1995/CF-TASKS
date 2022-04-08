<cfcomponent>
    <cffunction name="retrieveTableList">
        <cfquery name="showData" datasource = "cruddb">
            SELECT * FROM coldfusiion.cftasks
        </cfquery>
        <cfreturn showData>
    </cffunction>    
</cfcomponent>