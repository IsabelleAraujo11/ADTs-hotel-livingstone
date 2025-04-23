<div class="w-100 card" style="height:450px">
  <div data-interval="5000" id="carouselExampleIndicators-${randomNamespace}" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <#if card_img.getSiblings()?has_content>
        <#list card_img.getSiblings() as cur_card_img>
          <#if (cur_card_img.getData())?? && cur_card_img.getData() != "">
            <li data-target="#carouselExampleIndicators-${randomNamespace}" data-slide-to="${cur_card_img?index}" class="${cur_card_img?is_first?then('active','')}"></li>
          </#if>
        </#list>
      </#if>
    </ol>
    
   <div class="carousel-inner">
 <#if card_img.getSiblings()?has_content>
<#list card_img.getSiblings() as cur_card_img>
<#if (cur_card_img.getData())?? && cur_card_img.getData() != "">
<div class="carousel-item ${cur_card_img?is_first?then('active','')}">
<div class="aspect-ratio-16-to-9-cover"> 
<img class="aspect-ratio-item-cover"alt="${cur_card_img.getAttribute("alt")}" data-fileentryid="${cur_card_img.getAttribute("fileEntryId")}" src="${cur_card_img.getData()}" />
</div>
<div class="carousel-caption d-none d-md-block">
        <h5>${.vars["reserved-article-title"].data}</h5>
        <p><#if (card_subtitulo.getData())??>
${card_subtitulo.getData()}
</#if>.</p>
      </div>
</div>
</#if>
</#list>
</#if>
    </div>
  <button class="bg-transparent border-0 carousel-control-prev" type="button" data-target="#carouselExampleIndicators-${randomNamespace}" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </button>
  <button class="bg-transparent border-0 carousel-control-next" type="button" data-target="#carouselExampleIndicators-${randomNamespace}" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </button>
  </div>
  <div class="card-body">
    <h5 class="card-title">${.vars["reserved-article-title"].data}</h5>
    <p class="card-text">
     <#if (card_descricao.getData())??>
${card_descricao.getData()}
</#if>
    </p>
  </div>
</div>
<style >
.aspect-ratio-16-to-9-cover{
  height: 0;
  padding-top: 56.25%;
  position: relative;

}
.aspect-ratio-item-cover {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  object-position: center;
  vertical-align: middle;
}
