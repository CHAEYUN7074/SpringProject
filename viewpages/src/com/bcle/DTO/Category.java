/* ===============================
	Category.java
	- 카테고리 DTO
=================================*/

package com.bcle.DTO;

public class Category
{
   private String category_l_id, category_s_id, s_cat, l_cat;

   public String getCategory_s_id()
   {
      return category_s_id;
   }

   public void setCategory_s_id(String category_s_id)
   {
      this.category_s_id = category_s_id;
   }

   public String getS_cat()
   {
      return s_cat;
   }

   public void setS_cat(String s_cat)
   {
      this.s_cat = s_cat;
   }

   public String getCategory_l_id()
   {
      return category_l_id;
   }

   public void setCategory_l_id(String category_l_id)
   {
      this.category_l_id = category_l_id;
   }

   public String getL_cat()
   {
      return l_cat;
   }

   public void setL_cat(String l_cat)
   {
      this.l_cat = l_cat;
   }

   
   
   
}