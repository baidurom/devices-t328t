.class public Lcom/htc/opensense/album/plugin/CommandBar;
.super Ljava/lang/Object;
.source "CommandBar.java"


# instance fields
.field private mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mCountX:I

.field private mCountY:I

.field private mShowCommentCount:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mButtons:Ljava/util/ArrayList;

    .line 141
    iput v2, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCountX:I

    .line 146
    iput v2, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCountY:I

    .line 151
    iput-boolean v2, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mShowCommentCount:Z

    .line 19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mButtons:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/opensense/album/plugin/CommandBarButton;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lcom/htc/opensense/album/plugin/CommandBarButton;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;
    .locals 1
    .parameter "position"

    .prologue
    .line 53
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/plugin/CommandBarButton;

    goto :goto_0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCount:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hideCommentCount()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mShowCommentCount:Z

    .line 126
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 85
    iput p1, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCount:I

    .line 86
    return-void
.end method

.method public setCommentCountPosition(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 70
    iput p1, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCountX:I

    .line 71
    iput p2, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mCountY:I

    .line 72
    return-void
.end method

.method public showCommentCount()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/plugin/CommandBar;->mShowCommentCount:Z

    .line 113
    return-void
.end method
