.class Lcom/htc/app/mf/Animation$ViewCacheHdr;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCacheHdr"
.end annotation


# instance fields
.field mCache:Landroid/view/View;

.field mPane:Landroid/view/ViewGroup;

.field mSource:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 828
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 829
    iput-object p1, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mSource:Landroid/view/View;

    .line 830
    return-void
.end method


# virtual methods
.method apply()V
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mSource:Landroid/view/View;

    if-nez v0, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mSource:Landroid/view/View;

    const/4 v1, 0x0

    #calls: Lcom/htc/app/mf/Animation;->newCacheView(Landroid/view/View;I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/htc/app/mf/Animation;->access$600(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mCache:Landroid/view/View;

    .line 839
    iget-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mSource:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mPane:Landroid/view/ViewGroup;

    .line 841
    iget-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mPane:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mPane:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mCache:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 843
    iget-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mPane:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mSource:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 844
    const-string v0, "use view cache"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method restore()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mSource:Landroid/view/View;

    if-nez v0, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mPane:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mPane:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mCache:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 862
    iget-object v0, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mPane:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/app/mf/Animation$ViewCacheHdr;->mSource:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 863
    const-string v0, "restore real view"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
