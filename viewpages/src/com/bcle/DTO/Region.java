/* ===============================
	Region.java
	- 지역 DTO
=================================*/

package com.bcle.DTO;
public class Region  
{
   private String region_l_id,region_s_id,city,local;

   public String getRegion_l_id()
   {
      return region_l_id;
   }

   public void setRegion_l_id(String region_l_id)
   {
      this.region_l_id = region_l_id;
   }

   public String getRegion_s_id()
   {
      return region_s_id;
   }

   public void setRegion_s_id(String region_s_id)
   {
      this.region_s_id = region_s_id;
   }

   public String getCity()
   {
      return city;
   }

   public void setCity(String city)
   {
      this.city = city;
   }

   public String getLocal()
   {
      return local;
   }

   public void setLocal(String local)
   {
      this.local = local;
   }
   
   
   
}