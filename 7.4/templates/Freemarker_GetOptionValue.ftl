<#--
Add elements from the sidebar to define your template. Type "${" to use the
autocomplete feature.
-->



<#if FieldsGroup64068771.optionTarget.getSiblings()?has_content>
	<#list FieldsGroup64068771.optionTarget.getSiblings() as cur_FieldsGroup64068771_optionTarget>	
	
		<#if (cur_FieldsGroup64068771_optionTarget.getData())??>
			<#assign optionValue = getMapValue(FieldsGroup64068771.optionTarget.getOptionsMap(),
			        cur_FieldsGroup64068771_optionTarget.getData()) >		
																			
		 Option : ${cur_FieldsGroup64068771_optionTarget.getData()}  -  Value: ${optionValue} <br/>
			
		</#if>
		
	</#list>
	
</#if>


<#function getMapValue map option>
    	<#local result = "">
	<#list map as key,value>
		<#if key == option>
				<#local result = value>
		</#if>
	 </#list>
	<#return result>
</#function>
