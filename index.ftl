<#include "module/macro.ftl">
<@layout title="${blog_title!}">
<main class="self-container mdui-container">
    <div class="containerLeft">
        <div class="index-cover animate__animated">
            <div class="welcome_media">
                <img src="${settings.indeximg!'${theme_base!}/source/images/indexBack.jpg'}" alt="">
            </div>
            <div class="welcome">
                <div class="welcome_hello"></div>
                <div class="welcome_descr">
                <#if settings.aWord_enabled != true>
                    ${settings.index_notice!default}
                </#if>
                </div>
                <div class="welcome_contact">
                    <#if settings.github??>
                    <a href="${settings.github!}" target="_blank">
                        <img src="${theme_base!}/source/images/profile/github.svg" alt="">  
                    </a>
                    </#if>
                    <#if settings.email??>
                    <a href="mailto:${settings.email!}" target="_blank">
                        <img src="${theme_base!}/source/images/profile/mail.svg" alt="">  
                    </a>
                    </#if>
                    <#if settings.telegram??>
                    <a href="${settings.telegram!}" target="_blank">
                        <img src="${theme_base!}/source/images/profile/telegram.svg" alt="">   
                    </a>
                    </#if>               
                    <#if settings.wechat??>
                    <a href="#" target="_blank">
                        <img src"${settings.wechat}" alt=""  style="display: none">
                        <img src="${theme_base!}/source/images/profile/wechat.svg" alt="">    
                    </a>
                    </#if>
                </div>
            </div>
            <div class="welcome__figures">
                <div class="welcome__stat">
                    <@postTag method="count">
                        <span class="welcome__count">${count!0}</span> 
                    </@postTag>
                    <span class="welcome__count-descr">文章数</span>
                </div>
                <div class="welcome__stat">
                    <@categoryTag method="count">
                        <span class="welcome__count">${count!0}</span> 
                    </@categoryTag>
                    <span class="welcome__count-descr">分类数</span>
                </div>
                <div class="welcome__stat">
                    <@tagTag method="count">
                        <span class="welcome__count">${count!0}</span> 
                    </@tagTag>
                    <span class="welcome__count-descr">标签数</span>
                </div>
                <div class="welcome__stat">
                    <@commentTag method="count">
                        <span class="welcome__count">${count!0}</span> 
                    </@commentTag>
                    <span class="welcome__count-descr">评论数</span>
                </div>
            </div>
        </div>
        <#include "module/postList.ftl">
        <@postList/>

        <#if posts.totalPages gt 1>
            <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                <#include "module/turnPages.ftl">
                <@turnPages/>
            </@paginationTag>
        </#if>

    </div>

    
</main>

</@layout>