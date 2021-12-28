/* ===================
 *    Club.java
 * - 
 * ===================*/
package com.bcle.DTO;

public class Club
{
   // 주요 속성 구성
   private String cid, content, url, title, category_s_id, category_l_id, region_l_id, region_s_id, mid, preopendate,
         bdate, limit_id, agelimit_id, s_cat, l_cat, nickname, city, local
         ,id; //--세션으로 받아올 id속성 추가
          
   private int max, min_age, max_age
              , day //개설예정동아리 누르면 보여질 d-day
              , count; //--동아리의 현재 인원수 속성 추가 

   
   public String getId()
   {
      return id;
   }

   public void setId(String id)
   {
      this.id = id;
   }

   public int getCount()
   {
      return count;
   }

   public void setCount(int count)
   {
      this.count = count;
   }

   public String getCategory_l_id()
   {
      return category_l_id;
   }

   public void setCategory_l_id(String category_l_id)
   {
      this.category_l_id = category_l_id;
   }

   public int getDay()
   {
      return day;
   }

   public void setDay(int day)
   {
      this.day = day;
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

//getter/setter
   public String getCid()
   {
      return cid;
   }

   public void setCid(String cid)
   {
      this.cid = cid;
   }

   public String getContent()
   {
      return content;
   }

   public void setContent(String content)
   {
      this.content = content;
   }

   public String getUrl()
   {
      return url;
   }

   public void setUrl(String url)
   {
      this.url = url;
   }

   public String getTitle()
   {
      return title;
   }

   public void setTitle(String title)
   {
      this.title = title;
   }

   public String getCategory_s_id()
   {
      return category_s_id;
   }

   public void setCategory_s_id(String category_s_id)
   {
      this.category_s_id = category_s_id;
   }

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

   public String getMid()
   {
      return mid;
   }

   public void setMid(String mid)
   {
      this.mid = mid;
   }

   public String getPreopendate()
   {
      return preopendate;
   }

   public void setPreopendate(String preopendate)
   {
      this.preopendate = preopendate;
   }

   public String getBdate()
   {
      return bdate;
   }

   public void setBdate(String bdate)
   {
      this.bdate = bdate;
   }

   public String getLimit_id()
   {
      return limit_id;
   }

   public void setLimit_id(String limit_id)
   {
      this.limit_id = limit_id;
   }

   public String getAgelimit_id()
   {
      return agelimit_id;
   }

   public void setAgelimit_id(String agelimit_id)
   {
      this.agelimit_id = agelimit_id;
   }

   public String getS_cat()
   {
      return s_cat;
   }

   public void setS_cat(String s_cat)
   {
      this.s_cat = s_cat;
   }

   public String getL_cat()
   {
      return l_cat;
   }

   public void setL_cat(String l_cat)
   {
      this.l_cat = l_cat;
   }

   public String getNickname()
   {
      return nickname;
   }

   public void setNickname(String nickname)
   {
      this.nickname = nickname;
   }

   public int getMax()
   {
      return max;
   }

   public void setMax(int max)
   {
      this.max = max;
   }

   public int getMin_age()
   {
      return min_age;
   }

   public void setMin_age(int min_age)
   {
      this.min_age = min_age;
   }

   public int getMax_age()
   {
      return max_age;
   }

   public void setMax_age(int max_age)
   {
      this.max_age = max_age;
   }

}