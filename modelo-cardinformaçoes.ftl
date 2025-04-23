<div class="section bg-white">
  <div class="container">
    <div class="features-grid">
      <div class="feature-card">
        <div class="icon-container">
          <#if (card1.img1.getData())?? && card1.img1.getData() != "">
	<img alt="${card1.img1.getAttribute("alt")}" data-fileentryid="${card1.img1.getAttribute("fileEntryId")}" src="${card1.img1.getData()}" />
</#if>
        </div>
        <h3>
          <#if (card1.Title1.getData())??>
	${card1.Title1.getData()}
</#if>
        </h3>
        <p>
          <#if (card1.desc1.getData())??>
	${card1.desc1.getData()}
</#if>
        </p>
      </div>
      
      <div class="feature-card">
        <div class="icon-container">
          <#if (card2.img2.getData())?? && card2.img2.getData() != "">
            <img alt="${card2.img2.getAttribute("alt")}" data-fileentryid="${card2.img2.getAttribute("fileEntryId")}" src="${card2.img2.getData()}" />
          <#else>
            <i class="fas fa-gem"></i>
          </#if>
        </div>
        <h3>
          <#if (card2.title2.getData())??>
            ${card2.title2.getData()}
          </#if>
        </h3>
        <p>
          <#if (card2.desc2.getData())??>
            ${card2.desc2.getData()}
          </#if>
        </p>
      </div>
      
      <div class="feature-card">
        <div class="icon-container">
          <#if (card3.img3.getData())?? && card3.img3.getData() != "">
            <img alt="${card3.img3.getAttribute("alt")}" data-fileentryid="${card3.img3.getAttribute("fileEntryId")}" src="${card3.img3.getData()}" />
          <#else>
            <i class="fas fa-concierge-bell"></i>
          </#if>
        </div>
        <h3>
          <#if (card3.title3.getData())??>
            ${card3.title3.getData()}
          </#if>
        </h3>
        <p>
          <#if (card3.desc3.getData())??>
            ${card3.desc3.getData()}
          </#if>
        </p>
      </div>
      
      <div class="feature-card">
        <div class="icon-container">
          <#if (card4.img4.getData())?? && card4.img4.getData() != "">
            <img alt="${card4.img4.getAttribute("alt")}" data-fileentryid="${card4.img4.getAttribute("fileEntryId")}" src="${card4.img4.getData()}" />
          <#else>
            <i class="fas fa-paw"></i>
          </#if>
        </div>
        <h3>
          <#if (card4.title4.getData())??>
            ${card4.title4.getData()}
          </#if>
        </h3>
        <p>
          <#if (card4.desc4.getData())??>
            ${card4.desc4.getData()}
          </#if>
        </p>
      </div>
    </div>
  </div>
</div>

<style>
.features-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 2rem;
}

.feature-card {
    padding: 1.5rem;
    background-color: #f9fafb;
    border-radius: 0.5rem;
    text-align: center;
    transition: box-shadow 0.3s ease, transform 0.3s ease;
}

.feature-card:hover {
    box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
    transform: translateY(-5px);
}

.icon-container {
    display: inline-flex;
    justify-content: center;
    align-items: center;
    padding: 1rem;
    background-color: #dbeafe;
    border-radius: 50%;
    margin-bottom: 1rem;
    width: 80px;
    height: 80px;
}

.icon-container img {
    max-width: 100%;
    max-height: 100%;
    object-fit: contain;
}

.icon-container i {
    font-size: 1.75rem;
    color: #3b82f6;
}

.feature-card h3 {
    font-size: 1.25rem;
    font-weight: 600;
    margin-bottom: 0.75rem;
}

.feature-card p {
    color: #6b7280;
}

/* Estilo específico para o título */
.section-title {
    font-family: 'Times New Roman', serif;
    font-size: 2.5rem;
    text-align: center;
    margin-bottom: 2rem;
}
</style>
