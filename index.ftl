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
                        <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="24" height="24" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M5.75 14.25s-.5-2 .5-3c0 0-2 0-3.5-1.5s-1-4.5 0-5.5c-.5-1.5.5-2.5.5-2.5s1.5 0 2.5 1c1-.5 3.5-.5 4.5 0c1-1 2.5-1 2.5-1s1 1 .5 2.5c1 1 1.5 4 0 5.5s-3.5 1.5-3.5 1.5c1 1 .5 3 .5 3m-5-.5c-1.5.5-3-.5-3.5-1"/></svg>
                    </a>
                    </#if>
                    <#if settings.email??>
                    <a href="mailto:${settings.email!}" target="_blank">
                        <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="24" height="24" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="M22 6c0-1.1-.9-2-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6zm-2 0l-8 5l-8-5h16zm0 12H4V8l8 5l8-5v10z"/></svg>
                    </a>
                    </#if>
                    <#if settings.telegram??>
                    <a href="${settings.telegram!}" target="_blank">
                        <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="24" height="24" preserveAspectRatio="xMidYMid meet" viewBox="0 0 48 48"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" d="M40.83 8.48c1.14 0 2 1 1.54 2.86l-5.58 26.3c-.39 1.87-1.52 2.32-3.08 1.45L20.4 29.26a.4.4 0 0 1 0-.65l15.37-13.88c.7-.62-.15-.92-1.07-.36L15.41 26.54a.46.46 0 0 1-.4.05L6.82 24C5 23.47 5 22.22 7.23 21.33L40 8.69a2.16 2.16 0 0 1 .83-.21Z"/></svg>
                    </a>
                    </#if>               
                    <#if settings.wechat??>
                    <a href="#" target="_blank">
                        <img src"${settings.wechat}" alt=""  style="display: none">
                        <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="img" width="24" height="24" preserveAspectRatio="xMidYMid meet" viewBox="0 0 48 48"><g fill="none"><path d="M36.997 21.711C36.843 13.008 29.74 6 21 6C12.163 6 5 13.163 5 22c0 4.17 1.595 7.968 4.209 10.815l-1.199 7.21l7.115-3.055c3.135 1.042 6.093 1.303 8.875.782" clip-rule="evenodd"/><path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="M36.997 21.711C36.843 13.008 29.74 6 21 6C12.163 6 5 13.163 5 22c0 4.17 1.595 7.968 4.209 10.815l-1.199 7.21l7.115-3.055c3.135 1.042 6.093 1.303 8.875.782"/><path fill="currentColor" d="M15.125 20.467a2.258 2.258 0 0 0 2.25-2.267a2.258 2.258 0 0 0-2.25-2.267a2.258 2.258 0 0 0-2.25 2.267a2.258 2.258 0 0 0 2.25 2.267Zm9 0a2.258 2.258 0 0 0 2.25-2.267a2.258 2.258 0 0 0-2.25-2.267a2.258 2.258 0 0 0-2.25 2.267a2.258 2.258 0 0 0 2.25 2.267Z"/><path d="M38.762 39.93A10.453 10.453 0 0 1 32.5 42C26.701 42 22 37.299 22 31.5S26.701 21 32.5 21S43 25.701 43 31.5c0 1.6-.358 3.116-.998 4.473" clip-rule="evenodd"/><path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="M38.762 39.93A10.453 10.453 0 0 1 32.5 42C26.701 42 22 37.299 22 31.5S26.701 21 32.5 21S43 25.701 43 31.5c0 1.6-.358 3.116-.998 4.473"/><path d="M42.002 35.973L43 42l-4.238-2.07" clip-rule="evenodd"/><path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="M42.002 35.973L43 42l-4.238-2.07"/><path fill="currentColor" d="M35.688 30.8A1.694 1.694 0 0 1 34 29.1c0-.939.755-1.7 1.688-1.7c.931 0 1.687.761 1.687 1.7s-.755 1.7-1.688 1.7Zm-6.75 0a1.694 1.694 0 0 1-1.688-1.7c0-.939.756-1.7 1.688-1.7c.931 0 1.687.761 1.687 1.7s-.756 1.7-1.688 1.7Z"/></g></svg>
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