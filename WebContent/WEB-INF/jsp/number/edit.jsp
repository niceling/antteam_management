<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<script type="text/javascript">
	function submitForm(){
		var datastr=$("#number_form").serialize();
		var fields = $("#number_form").serializeArray();
		var data="{";
		jQuery.each(fields, function(i, field){
			data=data+"\""+field.name+"\":";
			data=data+"\""+field.value+"\",";
		});
		data=data.substring(0,data.length-1);
		data=data+"}";
		console.info(data);
		jQuery.ajax({
			type:"post",
			url:"editNumber",
			data:datastr,
			contentType:"application/json;charset=utf-8",
// 			dataType:"json",
			success:function(data){
				alert(data);
// 				if("success"==data){
// 					closeDialog();
// 					datalistreload();
// 					jQuery.messager.show({
// 						title:'操作结果提醒',
// 						msg:'添加成功',
// 						timeout:5000,
// 						showType:'fade'
// 					});
// 				}
			}
			});
	}
</script> 
    <form id="number_form" method="post" action="editNumber">
    	<input type="hidden" name="order_id" value="${order_id }" />
    	<p style="margin-left: 10px;">
    	 <label>客户姓名：</label>
    	 <input class="easyui-textbox"  type="text" name="user_name" value="${number.user_name }"></input>
    	 <label style="margin-left: 50px;">总额：</label>
    	 <label id="total">0</label>
    	</p>
    	<table cellpadding="5">
    		<tr>
    			<td width="2%">1</td>
    			<td><input class="easyui-textbox"  type="text" name="_1" value="${number._1 }"></input></td>
    			<td>11</td>
    			<td><input class="easyui-textbox"  type="text" name="_11"></input></td>
    			<td>21</td>
    			<td><input class="easyui-textbox"  type="text" name="_21"></input></td>
    			<td>31</td>
    			<td><input class="easyui-textbox"  type="text" name="_31"></input></td>
    			<td>41</td>
    			<td><input class="easyui-textbox"  type="text" name="_41"></input></td>
    		</tr>
    		<tr>
    			<td width="2%">2</td>
    			<td><input class="easyui-textbox"  type="text" name="_2"></input></td>
    			<td>12</td>
    			<td><input class="easyui-textbox"  type="text" name="_12"></input></td>
    			<td>22</td>
    			<td><input class="easyui-textbox"  type="text" name="_22"></input></td>
    			<td>32</td>
    			<td><input class="easyui-textbox"  type="text" name="_32"></input></td>
    			<td>42</td>
    			<td><input class="easyui-textbox"  type="text" name="_42"></input></td>
    		</tr>
    		<tr>
    			<td width="2%">3</td>
    			<td><input class="easyui-textbox"  type="text" name="_3"></input></td>
    			<td>13</td>
    			<td><input class="easyui-textbox"  type="text" name="_13"></input></td>
    			<td>23</td>
    			<td><input class="easyui-textbox"  type="text" name="_23"></input></td>
    			<td>33</td>
    			<td><input class="easyui-textbox"  type="text" name="_33"></input></td>
    			<td>43</td>
    			<td><input class="easyui-textbox"  type="text" name="_43"></input></td>
    		</tr>
    		<tr>
    			<td width="2%">4</td>
    			<td><input class="easyui-textbox"  type="text" name="_4"></input></td>
    			<td>14</td>
    			<td><input class="easyui-textbox"  type="text" name="_14"></input></td>
    			<td>24</td>
    			<td><input class="easyui-textbox"  type="text" name="_24"></input></td>
    			<td>34</td>
    			<td><input class="easyui-textbox"  type="text" name="_34"></input></td>
    			<td>44</td>
    			<td><input class="easyui-textbox"  type="text" name="_44"></input></td>
    		</tr>
    		<tr>
    			<td width="2%">5</td>
    			<td><input class="easyui-textbox"  type="text" name="_5"></input></td>
    			<td>15</td>
    			<td><input class="easyui-textbox"  type="text" name="_15"></input></td>
    			<td>25</td>
    			<td><input class="easyui-textbox"  type="text" name="_25"></input></td>
    			<td>35</td>
    			<td><input class="easyui-textbox"  type="text" name="_35"></input></td>
    			<td>45</td>
    			<td><input class="easyui-textbox"  type="text" name="_45"></input></td>
    		</tr>
    		<tr>
    			<td width="2%">6</td>
    			<td><input class="easyui-textbox"  type="text" name="_6"></input></td>
    			<td>16</td>
    			<td><input class="easyui-textbox"  type="text" name="_16"></input></td>
    			<td>26</td>
    			<td><input class="easyui-textbox"  type="text" name="_26"></input></td>
    			<td>36</td>
    			<td><input class="easyui-textbox"  type="text" name="_36"></input></td>
    			<td>46</td>
    			<td><input class="easyui-textbox"  type="text" name="_46"></input></td>
    		</tr>
    		<tr>
    			<td width="2%">7</td>
    			<td><input class="easyui-textbox"  type="text" name="_7"></input></td>
    			<td>17</td>
    			<td><input class="easyui-textbox"  type="text" name="_17"></input></td>
    			<td>27</td>
    			<td><input class="easyui-textbox"  type="text" name="_27"></input></td>
    			<td>37</td>
    			<td><input class="easyui-textbox"  type="text" name="_37"></input></td>
    			<td>47</td>
    			<td><input class="easyui-textbox"  type="text" name="_47"></input></td>
    		</tr>
    		<tr>
    			<td width="2%">8</td>
    			<td><input class="easyui-textbox"  type="text" name="_8"></input></td>
    			<td>18</td>
    			<td><input class="easyui-textbox"  type="text" name="_18"></input></td>
    			<td>28</td>
    			<td><input class="easyui-textbox"  type="text" name="_28"></input></td>
    			<td>38</td>
    			<td><input class="easyui-textbox"  type="text" name="_38"></input></td>
    			<td>48</td>
    			<td><input class="easyui-textbox"  type="text" name="_48"></input></td>
    		</tr>
    		<tr>
    		    <td width="2%">9</td>
    			<td><input class="easyui-textbox"  type="text" name="_9"></input></td>
    			<td>19</td>
    			<td><input class="easyui-textbox"  type="text" name="_19"></input></td>
    			<td>29</td>
    			<td><input class="easyui-textbox"  type="text" name="_29"></input></td>
    			<td>39</td>
    			<td><input class="easyui-textbox"  type="text" name="_39"></input></td>
    			<td>49</td>
    			<td><input class="easyui-textbox"  type="text" name="_49"></input></td>
    		</tr>
    		<tr>
    			<td width="2%">10</td>
    			<td><input class="easyui-textbox"  type="text" name="_10"></input></td>
    			<td>20</td>
    			<td><input class="easyui-textbox"  type="text" name="_10"></input></td>
    			<td>30</td>
    			<td><input class="easyui-textbox"  type="text" name="_30"></input></td>
    			<td>40</td>
    			<td><input class="easyui-textbox"  type="text" name="_40"></input></td>
    		</tr>
    	</table>
   </form>
   <div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">添加</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeDialog()">取消</a>
   </div>