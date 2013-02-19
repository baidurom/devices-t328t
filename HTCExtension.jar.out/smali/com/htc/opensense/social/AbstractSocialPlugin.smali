.class public abstract Lcom/htc/opensense/social/AbstractSocialPlugin;
.super Ljava/lang/Object;
.source "AbstractSocialPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/AbstractSocialPlugin$1;,
        Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mTransport:Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/htc/opensense/social/AbstractSocialPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/AbstractSocialPlugin;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;-><init>(Lcom/htc/opensense/social/AbstractSocialPlugin;Lcom/htc/opensense/social/AbstractSocialPlugin$1;)V

    iput-object v0, p0, Lcom/htc/opensense/social/AbstractSocialPlugin;->mTransport:Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;

    .line 20
    return-void
.end method


# virtual methods
.method public final getIBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/opensense/social/AbstractSocialPlugin;->mTransport:Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;

    invoke-virtual {v0}, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract hasFeatures(Lcom/htc/opensense/social/SocialPluginResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract publishActivityStream(Lcom/htc/opensense/social/SocialPluginResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract syncActivityStreams(Lcom/htc/opensense/social/SocialPluginResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public syncContacts(Lcom/htc/opensense/social/SocialPluginResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter "response"
    .parameter "accounts"
    .parameter "options"

    .prologue
    .line 197
    sget-object v0, Lcom/htc/opensense/social/AbstractSocialPlugin;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Method not implemented by plugin subclass"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public syncLists(Lcom/htc/opensense/social/SocialPluginResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter "response"
    .parameter "accounts"
    .parameter "options"

    .prologue
    .line 191
    sget-object v0, Lcom/htc/opensense/social/AbstractSocialPlugin;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Method not implemented by plugin subclass"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    return-object v0
.end method
