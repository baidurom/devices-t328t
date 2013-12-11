.class public Lcom/htc/widget/CarouselPluginActivity;
.super Lcom/htc/widget/CarouselActivity;
.source "CarouselPluginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/CarouselPluginActivity$PluginChangeObserver;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "CarouselPluginActivity"


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPluginUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "authority"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v0, "content://com.htc.opensense.plugin/plugins"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselPluginActivity;->mPluginUri:Landroid/net/Uri;

    .line 119
    new-instance v0, Lcom/htc/widget/CarouselPluginActivity$PluginChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/widget/CarouselPluginActivity$PluginChangeObserver;-><init>(Lcom/htc/widget/CarouselPluginActivity;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselPluginActivity;->mObserver:Landroid/database/ContentObserver;

    .line 130
    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/htc/widget/CarouselPluginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/widget/CarouselPluginActivity;->mPluginUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/CarouselPluginActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    return-void
.end method


# virtual methods
.method protected onAddPluginTabs()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-direct {p0}, Lcom/htc/widget/CarouselPluginActivity;->registerContentObservers()V

    .line 143
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onDestroy()V

    .line 175
    invoke-virtual {p0}, Lcom/htc/widget/CarouselPluginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselPluginActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 176
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onPause()V

    .line 165
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/htc/widget/CarouselPluginActivity;->onAddPluginTabs()V

    .line 192
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onResume()V

    .line 154
    return-void
.end method
