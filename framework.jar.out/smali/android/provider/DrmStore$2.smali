.class final Landroid/provider/DrmStore$2;
.super Ljava/lang/Object;
.source "DrmStore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Landroid/drm/mobile1/DrmRawContent;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rights:Landroid/drm/mobile1/DrmRights;


# direct methods
.method constructor <init>(Landroid/drm/mobile1/DrmRights;Landroid/drm/mobile1/DrmRawContent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5915
    iput-object p1, p0, Landroid/provider/DrmStore$2;->val$rights:Landroid/drm/mobile1/DrmRights;

    iput-object p2, p0, Landroid/provider/DrmStore$2;->val$content:Landroid/drm/mobile1/DrmRawContent;

    iput-object p3, p0, Landroid/provider/DrmStore$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 5917
    iget-object v3, p0, Landroid/provider/DrmStore$2;->val$rights:Landroid/drm/mobile1/DrmRights;

    if-nez v3, :cond_0

    .line 5918
    iget-object v3, p0, Landroid/provider/DrmStore$2;->val$content:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v3}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v1

    .line 5920
    .local v1, rightsIssuer:Ljava/lang/String;
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query Rights : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5922
    if-nez v1, :cond_1

    .line 5933
    .end local v1           #rightsIssuer:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 5925
    .restart local v1       #rightsIssuer:Ljava/lang/String;
    :cond_1
    const-string v3, "\\"

    const-string v4, "/"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 5927
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5928
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5929
    .local v2, righturi:Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5930
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5931
    iget-object v3, p0, Landroid/provider/DrmStore$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
