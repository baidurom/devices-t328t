.class public final Lcom/htc/util/contacts/SNLinkUtils;
.super Ljava/lang/Object;
.source "SNLinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/SNLinkUtils$NewMethod;,
        Lcom/htc/util/contacts/SNLinkUtils$OldMethod;,
        Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FACEBOOK_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.facebook/login"

.field public static final FACEBOOK_LOGIN_ORI_MIMETYPE:Ljava/lang/String; = "com.facebook.auth.login/login"

.field public static final FLICKR_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.flickr/login"

.field private static final FRIENDOF_TAG:Ljava/lang/String; = "friendof:"

.field private static final ID_TAG:Ljava/lang/String; = "id:"

.field public static final KAIXIN_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.KaixinFriendStream/login"

.field public static final LINK_NOTE_LIMIT:I = 0x14

.field public static final PLURK_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.plurk/login"

.field public static final QQIM_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.qqim/login"

.field public static final QQWEIBO_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.qqweibo/login"

.field public static final QZONE_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.chinasns/login"

.field public static final RENREN_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin/login"

.field public static final SINAWEIBO_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin/login"

.field private static final TAG:Ljava/lang/String; = "SNLinkUtils"

.field public static final TWITTER_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.htctwitter/login"

.field public static final TYPE_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final TYPE_FACEBOOK_SSO:Ljava/lang/String; = "facebook sso"

.field public static final TYPE_FLICKR:Ljava/lang/String; = "flickr"

.field public static final TYPE_PLURK:Ljava/lang/String; = "plurk"

.field public static final TYPE_TWITTER:Ljava/lang/String; = "twitter"

.field private static final mCachedLoginIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    :cond_0
    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 295
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils;->transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, newText:Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 279
    .local v1, list_old:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 280
    .local v0, list_new:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-nez v1, :cond_1

    move-object v1, v0

    .line 290
    .end local v1           #list_old:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 282
    .restart local v1       #list_old:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_1
    if-eqz v0, :cond_0

    .line 284
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 285
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static findPositionByUserId(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v3, -0x1

    .line 113
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 121
    :cond_1
    :goto_0
    return v2

    .line 115
    :cond_2
    const/4 v2, 0x0

    .line 116
    .local v2, pos:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 117
    .local v1, l:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v4, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #l:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_3
    move v2, v3

    .line 121
    goto :goto_0
.end method

.method public static getLoginIdOfSNAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "AccountType"

    .prologue
    .line 189
    if-eqz p0, :cond_0

    .line 190
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSNType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "AccountType"

    .prologue
    .line 272
    return-object p0
.end method

.method public static isSNContacts(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.htctwitter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.qqim"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.chinasns"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.KaixinFriendStream"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSNFacebookLogin()Z
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNFlickrLogin()Z
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNKaixinLogin()Z
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.KaixinFriendStream"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNLogin()Z
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNPlurkLogin()Z
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNQQIMLogin()Z
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqim"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNQQWeiboLogin()Z
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNQZoneLogin()Z
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.chinasns"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNRenrenLogin()Z
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNSinaLogin()Z
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNTwitterLogin()Z
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.htctwitter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncContacts(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    const-string v1, "com.google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.android.mail.eas"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.exchange"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.android.pcsc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 301
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils;->transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, newText:Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeLoginId(Ljava/lang/String;)V
    .locals 1
    .parameter "AccountType"

    .prologue
    .line 205
    if-eqz p0, :cond_0

    .line 206
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    return-void
.end method

.method public static setLoginId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "AccountType"
    .parameter "id"

    .prologue
    .line 197
    const-string v0, "SNLinkUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoginId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz p0, :cond_0

    .line 199
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    return-void
.end method

.method public static setLoginIdForSNAcoount(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 215
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 217
    const-string v3, "mimetype = com.htc.socialnetwork.facebook/login OR mimetype = com.facebook.auth.login/login OR mimetype = com.htc.socialnetwork.flickr/login OR mimetype = com.htc.socialnetwork.plurk/login OR mimetype = com.htc.htctwitter/login OR mimetype = com.htc.friendstream.sinaweiboplugin/login OR mimetype = com.htc.socialnetwork.qqim/login OR mimetype = com.htc.socialnetwork.qqweibo/login OR mimetype = com.htc.socialnetwork.chinasns/login OR mimetype = com.htc.KaixinFriendStream/login OR mimetype = com.htc.friendstream.renrenwebplugin/login"

    .line 228
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/provider/HtcContactsContract$Data;->CONTENT_URI_DATA_ONLY:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "mimetype"

    aput-object v5, v2, v9

    const-string v5, "data1"

    aput-object v5, v2, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 229
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_c

    .line 230
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 231
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, type:Ljava/lang/String;
    const-string v0, "com.htc.socialnetwork.facebook/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 235
    :cond_1
    const-string v0, "com.facebook.auth.login/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.facebook.auth.login"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 238
    :cond_2
    const-string v0, "com.htc.socialnetwork.flickr/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 241
    :cond_3
    const-string v0, "com.htc.socialnetwork.plurk/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    :cond_4
    const-string v0, "com.htc.htctwitter/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.htctwitter"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 247
    :cond_5
    const-string v0, "com.htc.friendstream.sinaweiboplugin/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 248
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 250
    :cond_6
    const-string v0, "com.htc.socialnetwork.qqim/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqim"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 253
    :cond_7
    const-string v0, "com.htc.socialnetwork.qqweibo/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 254
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqweibo"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 256
    :cond_8
    const-string v0, "com.htc.socialnetwork.chinasns/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 257
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.chinasns"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 259
    :cond_9
    const-string v0, "com.htc.KaixinFriendStream/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 260
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.KaixinFriendStream"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 262
    :cond_a
    const-string v0, "com.htc.friendstream.renrenwebplugin/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 266
    .end local v7           #type:Ljava/lang/String;
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_c
    return-void
.end method

.method public static transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "oriText"

    .prologue
    .line 312
    const/4 v9, 0x0

    .line 314
    .local v9, newText:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 369
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 318
    .restart local p0
    :cond_1
    const-string v15, "<sn>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 319
    .local v12, startingIndexOld:I
    const-string v15, "</sn>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 320
    .local v5, endingIndexOld:I
    const-string v15, "<HTCData>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 321
    .local v11, startingIndexNew:I
    const-string v15, "</HTCData>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 323
    .local v4, endingIndexNew:I
    if-lt v5, v12, :cond_2

    if-ge v4, v11, :cond_5

    .line 325
    :cond_2
    if-le v12, v11, :cond_4

    move v8, v12

    .line 326
    .local v8, index:I
    :goto_1
    if-lez v8, :cond_3

    .line 327
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_3
    move-object/from16 p0, v9

    .line 330
    goto :goto_0

    .end local v8           #index:I
    :cond_4
    move v8, v11

    .line 325
    goto :goto_1

    .line 334
    :cond_5
    const-string v15, "<sn>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 335
    .local v10, startingIndex:I
    const-string v15, "</sn>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 336
    .local v3, endingIndex:I
    if-lt v3, v10, :cond_0

    const/4 v15, -0x1

    if-eq v10, v15, :cond_0

    const/4 v15, -0x1

    if-eq v3, v15, :cond_0

    .line 341
    const-string v15, "<sn>"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 342
    .local v13, subText:Ljava/lang/String;
    new-instance v6, Ljava/util/StringTokenizer;

    const-string/jumbo v15, "|"

    invoke-direct {v6, v13, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .local v6, idListTokens:Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v2, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_6
    :goto_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 345
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 346
    .local v14, token:Ljava/lang/String;
    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 347
    .local v7, ids:[Ljava/lang/String;
    array-length v15, v7

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_6

    .line 350
    const/4 v15, 0x0

    aget-object v15, v7, v15

    const-string v16, "id:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    aget-object v15, v7, v15

    const-string v16, "friendof:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 352
    new-instance v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v1}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 353
    .local v1, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    const/4 v15, 0x0

    aget-object v15, v7, v15

    const-string v16, "id:"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 354
    const/4 v15, 0x1

    aget-object v15, v7, v15

    const-string v16, "friendof:"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 355
    iget-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 356
    const-string v15, "com.htc.socialnetwork.flickr"

    iput-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 360
    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 358
    :cond_7
    const-string v15, "com.htc.socialnetwork.facebook"

    iput-object v15, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    goto :goto_3

    .line 366
    .end local v1           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v7           #ids:[Ljava/lang/String;
    .end local v14           #token:Ljava/lang/String;
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v15}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v9

    move-object/from16 p0, v9

    .line 369
    goto/16 :goto_0
.end method
