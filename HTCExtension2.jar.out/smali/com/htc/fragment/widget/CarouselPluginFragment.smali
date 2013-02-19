.class public Lcom/htc/fragment/widget/CarouselPluginFragment;
.super Lcom/htc/fragment/widget/CarouselFragment;
.source "CarouselPluginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselPluginFragment$PluginChangeObserver;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPluginUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "authority"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v0, "content://com.htc.fragment.opensense.plugin/plugins"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselPluginFragment;->mPluginUri:Landroid/net/Uri;

    .line 118
    new-instance v0, Lcom/htc/fragment/widget/CarouselPluginFragment$PluginChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselPluginFragment$PluginChangeObserver;-><init>(Lcom/htc/fragment/widget/CarouselPluginFragment;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselPluginFragment;->mObserver:Landroid/database/ContentObserver;

    .line 128
    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselPluginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselPluginFragment;->mPluginUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselPluginFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    return-void
.end method


# virtual methods
.method protected onAddPluginTabs()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselPluginFragment;->registerContentObservers()V

    .line 141
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onDestroy()V

    .line 173
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselPluginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselPluginFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 174
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onPause()V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onResume()V

    .line 152
    return-void
.end method
