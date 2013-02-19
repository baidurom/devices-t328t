.class Lcom/htc/app/mf/MfCarouselInternalFragment$1;
.super Ljava/lang/Object;
.source "MfCarouselInternalFragment.java"

# interfaces
.implements Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/mf/MfCarouselInternalFragment;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/mf/MfCarouselInternalFragment;


# direct methods
.method constructor <init>(Lcom/htc/app/mf/MfCarouselInternalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/app/mf/MfCarouselInternalFragment$1;->this$0:Lcom/htc/app/mf/MfCarouselInternalFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 35
    iget-object v1, p0, Lcom/htc/app/mf/MfCarouselInternalFragment$1;->this$0:Lcom/htc/app/mf/MfCarouselInternalFragment;

    invoke-virtual {v1}, Lcom/htc/app/mf/MfCarouselInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 36
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 37
    const-string v1, "carousel on tab changed"

    invoke-static {v1}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 40
    :cond_0
    return-void
.end method
