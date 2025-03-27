<%-- 
    Document   : index
    Created on : 01/10/2023, 14:46:02
    Author     : cleu2
--%>


 
<%
    // declaração das variaveis que recebem o valores digitados pelos usurarios //
    float jan = 0;
    float fev = 0;
    float mar = 0;
    float abr  = 0;
    float mai = 0;
    float jun  = 0;
    float jul =  0;
    float ago = 0;
    float set = 0;
    float outub = 0;
    float nov = 0;
    float dez= 0;
    
    float res = 0;
    float resultM  = 0;
    float resul = 0;
    
 //************************************************************************//
    
   // Declarando as variaveaveis que recebem os valores maiores e menores // 
    String v = "";
    String vM = "";
    String j = "janeiro";
    String f = "fevereiro";
    String ma = "março";
    String ab = "abril";
    String m = "maio";
    String ju = "junho";
    String jl = "julho";
    String agost= "agosto";
    String setem = "setembro";
    String outubr = "outubro";
    String novemb = "novembro";
    String dezemb= "dezembro";
     
  //************************************************************************//  
      // inicio da ocdição para buscar os valores la no metodo post do formulario //
        if(request.getMethod()=="POST"){
            // convertendo as variaveis para tipo float //
            jan = Float.parseFloat(request.getParameter("jan"));
            fev = Float.parseFloat(request.getParameter("fev"));
            mar = Float.parseFloat(request.getParameter("mar"));
            abr = Float.parseFloat(request.getParameter("abr"));
            mai = Float.parseFloat(request.getParameter("mai"));
            jun = Float.parseFloat(request.getParameter("jun"));
            jul = Float.parseFloat(request.getParameter("jul"));
            ago = Float.parseFloat(request.getParameter("ago"));
            set = Float.parseFloat(request.getParameter("set"));
            outub = Float.parseFloat(request.getParameter("outub"));
            nov = Float.parseFloat(request.getParameter("nov"));
            dez = Float.parseFloat(request.getParameter("dez"));
            
  //*******************************************************************************//
                
              // inicio das condiçoes para saber qual o maior valor e mes de consumo //
            if(request.getParameter("maior")!=null  ){
                    if( jan > fev )
                     {
                         res = jan;
                         String.valueOf(j); 
                         v = j;
                     }
                    else if(fev > mar)
                     {
                         res = fev;
                         String.valueOf(f); 
                         v = f;
                      
                    }
                    else if(mar > abr)
                    {
                         res = mar;
                         String.valueOf(ma); 
                         v = ma;
                                        }
                    else if(abr > mai)
                    {
                        res = abr;
                        String.valueOf(ab); 
                        v = ab;
                        
                    }
                    else if(mai > jun)
                    {
                        res = mai;
                        String.valueOf(m); 
                        v = m;
                                       
                    }
                    else if(jun > jul)
                    {
                        res = jun;
                        String.valueOf(ju); 
                        v = ju;
                    
                    }
                    else if(jul > ago)
                    {
                        res = jul;
                        String.valueOf(jl); 
                        v = jl;
                    
                    }
                    else if(ago > set)
                    {
                        res = ago;
                        String.valueOf( agost); 
                        v =  agost;
                    
                    }
                    else if(set > outub)
                    {
                        res = set;
                        String.valueOf(setem ); 
                        v = setem ;
                    
                    }
                    else if(outub > nov)
                    {
                        res = outub;
                        String.valueOf(outubr); 
                        v = outubr;
                    
                    }
                    else if(nov > dez )
                    {
                       res = nov;
                       String.valueOf(novemb); 
                       v = novemb;  
                    
                    }
                    else if (dez > jan)
                    {
                        res = dez;
                        String.valueOf(dezemb); 
                        v = dezemb;  
                    }
                     
                     
                }
 //***********************************************************************************************//
            // inicio das condiçoes para saber qual o menor valor e mes de consumo //
            if(request.getParameter("maior")!=null  ){
                    if( jan < fev )
                     {
                         resultM = jan;
                         String.valueOf(j); 
                         vM = j;
                     }
                    else if(fev < mar)
                     {
                         resultM = fev;
                         String.valueOf(f); 
                         vM = f;
                      
                    }
                    else if(mar < abr)
                    {
                         resultM = mar;
                         String.valueOf(ma); 
                         vM = ma;
                                        }
                    else if(abr < mai)
                    {
                        resultM = abr;
                        String.valueOf(ab); 
                        vM = ab;
                        
                    }
                    else if(mai < jun)
                    {
                        resultM = mai;
                        String.valueOf(m); 
                        vM = m;
                                       
                    }
                    else if(jun < jul)
                    {
                        resultM = jun;
                        String.valueOf(ju); 
                        vM = ju;
                    
                    }
                    else if(jul < ago)
                    {
                        resultM = jul;
                        String.valueOf(jl); 
                        vM = jl;
                    
                    }
                    else if(ago < set)
                    {
                        resultM = ago;
                        String.valueOf( agost); 
                        vM =  agost;
                    
                    }
                    else if(set < outub)
                    {
                        resultM = set;
                        String.valueOf(setem ); 
                        vM = setem ;
                    
                    }
                    else if(outub < nov)
                    {
                        resultM = outub;
                        String.valueOf(outubr); 
                        vM = outubr;
                    
                    }
                    else if(nov < dez )
                    {
                       resultM = nov;
                       String.valueOf(novemb); 
                       vM = novemb;  
                    
                    }
                    else if (dez < jan)
                    {
                        resultM = dez;
                        String.valueOf(dezemb); 
                        vM = dezemb;  
                    }
                     
                     
                }
             
                       
 //**************************************************************************************************//
                 
                        
                //**********************************************************//
                // calcula a soma de todos os meses de consumo geladeira //
                  if( request.getParameter("maior") != null  ){
                    resul = jan + fev + mar + mai + jun + jul + ago+ set+  outub + nov + dez ;
                }    
 //**************************************************************************************************//               
        }
        
%>



 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <title>Calculo Anual Consumo Geladeira</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <style>
            label{
                
                margin-left: 400px;
                display:inline-block;
                width: 250px;
                 }
                 
            input{
                margin-left: 50px;
            }
            
            div{
                border: 1px black solid ;
                padding: 40px;
                margin-top: 20px;
            }
            h2{
                 margin-left: 100px;
                 color: green;
            }
            
            h3{
                margin-left: 100px;
  
            }
            #btn{
                margin-left: 704px;
                color: royalblue;
                width: 100px;
                height: 40px;
            }
            
            
            
        </style>
    
    </head>
    
        
    <div>
            <h1 style="text-align: center" >Calculo Consumo Mensal da Geladeira !!!</h1>
            <h2>Digite o valor Mensal em WATTS da sua Geladeira !!! </h2>
            
            <form method="POST"  >
                <label> VALOR WATTS DE JANEIRO =</label>    <input type="number" required name="jan" value="% =jan %" style="text-align: center" /> <br>
                <label> VALOR WATTS DE FEVEREIRO = </label> <input type="number" required name="fev" value="%=fev %"/> <br>
               <label> VALOR  WATTSDE MARCO = </label>      <input type="number" required name="mar" value="% =mar %" /> <br>
               <label> VALOR WATTS DE ABRIL = </label>      <input type="number" required name="abr" value="% =abr %" /> <br>
               <label> VALOR WATTS DE MAIO = </label>       <input type="number" required name="mai" value="% =mai %" /> <br>
               <label> VALOR WATTS DE JUNHO =</label>       <input type="number" required name="jun" value="% =jun %" /> <br>
               <label> VALOR WATTS DE JULHO = </label>      <input type="number" required name="jul" value="% =jul %" /> <br>
               <label> VALOR WATTS DE AGOSTO = </label>     <input type="number" required name="ago" value="% =ago %" /> <br>
               <label> VALOR WATTS DE SETEMBRO=</label>     <input type="number" required name="set" value="% =set %" /> <br>
               <label> VALOR WATTS DE OUTUBRO = </label>    <input type="number" required name="outub" value="% =outub %" /> <br>
               <label> VALOR WATTS DE NOVEMBRO =</label>    <input type="number" required name="nov" value="% =nov %" /> <br>
               <label> VALOR WATTS DE DEZEMBRO = </label>   <input type="number" required name="dez" value="% =dez %" /> <br>
                
                
                <br/> 
                 
                <input type="submit" value=" Calcular" name="maior" id="btn" /> <br/> 
                
                
            </form>     
            
    </div>        
    
    <div>
        
        <h1 style="text-align: center" >Resultado Final do Calculo de Consumo Mensal da Geladeira !!!</h1>
        
        <h2> CLEUDIO DE FARIA</h2> 
        
        <h3> Resultado da Soma Anual do Consumo:  <%=resul %> </h3> 
                     
        <h3 > Maior Valor do Consumo:  <%=res%>  </h3>  
                    
        <h3>  Mes de Maior Consumo:  <%=v%>  </h3>   
               
        <h3>  Mes de Menor Consumo:  <%=vM%>  </h3>
    
    </div>        
              
                 
           
              
                   
                
             
        
        
        
        
        
        
        
        
    

