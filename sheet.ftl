<#include "module/macro.ftl">
<@layout title="${sheet.title!} - ${blog_title!}">
<main class="self-container mdui-container">
    <div class="containerLeft animate__animated post_animate">
        <article class="post">
            <div class="mdui-card">
                <#if post.thumbnail?? && post.thumbnail!=''>
                    <div class="mdui-card-media">
                        <div class="postBackground" style="background-image: url('${post.thumbnail!}')"></div>
                        <div class="mdui-card-media-covered mdui-card-media-covered-gradient">
                            <div class="mdui-card-primary">
                                <div class="mdui-card-primary-title">${sheet.title!}</div>
                            </div>
                        </div>
                    </div>
                    <#else>
                        <div class="noimg">
                            <h2 class="mdui-card-primary-title">${sheet.title!}</h2>
                        </div>
                </#if>

                <div class="postFront">
                    <div class="pleft">
                        <img class="mdui-img-circle" src="${settings.avatarLogo!'${theme_base!}/source/images/avatar.png'}" alt="${user.nickname!}">
                        <div>
                            <span>${user.nickname!}</span>
                            <span>${post.createTime?string["yyyy年MM月dd日"]!}</span>
                        </div>
                    </div>
                    <div class="pright">
                        <button class="copylink mdui-btn mdui-btn-icon mdui-ripple mdui-text-color-theme">
                            <i class="mdui-icon material-icons">share</i>
                        </button>
                    </div>
                </div>
                <div class="mdui-typo mdui-card-content">
                    ${sheet.formatContent!}
                </div>
            </div>
        </article>
        <div class="comments mdui-card">
        <!--  评论区域  -->
        <#include "module/comment.ftl">
        <@comment post=sheet type="sheet" />
        <!--  评论区结束  -->
        </div>
    </div>
</main>
</@layout>