.class public Lcom/htc/opensense/album/plugin/CommandBarButton;
.super Ljava/lang/Object;
.source "CommandBarButton.java"


# static fields
.field public static final PLUGIN_CONTROL_BUTTON_ID_SHARE:I = 0x60a00000


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mId:I

.field private mPosition:I

.field private mSubList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;


# direct methods
.method constructor <init>(II)V
    .locals 1
    .parameter "position"
    .parameter "id"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mSubList:Ljava/util/ArrayList;

    .line 22
    iput p2, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mId:I

    .line 23
    iput p1, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mPosition:I

    .line 24
    return-void
.end method


# virtual methods
.method public addSubItem(ILjava/lang/String;Landroid/graphics/Bitmap;)Lcom/htc/opensense/album/plugin/CommandBarButton;
    .locals 2
    .parameter "id"
    .parameter "text"
    .parameter "bitmap"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mSubList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mSubList:Ljava/util/ArrayList;

    .line 126
    :cond_0
    new-instance v0, Lcom/htc/opensense/album/plugin/CommandBarButton;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Lcom/htc/opensense/album/plugin/CommandBarButton;-><init>(II)V

    .line 127
    .local v0, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v0, p3}, Lcom/htc/opensense/album/plugin/CommandBarButton;->setButtonBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    invoke-virtual {v0, p2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->setButtonText(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-object v0
.end method

.method public addSubItem(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/htc/opensense/album/plugin/CommandBarButton;
    .locals 2
    .parameter "id"
    .parameter "text"
    .parameter "drawable"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mSubList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mSubList:Ljava/util/ArrayList;

    .line 140
    :cond_0
    new-instance v0, Lcom/htc/opensense/album/plugin/CommandBarButton;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Lcom/htc/opensense/album/plugin/CommandBarButton;-><init>(II)V

    .line 141
    .local v0, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v0, p3}, Lcom/htc/opensense/album/plugin/CommandBarButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {v0, p2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->setButtonText(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-object v0
.end method

.method public getButtonBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mId:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mPosition:I

    return v0
.end method

.method public getSubItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/CommandBarButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mSubList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public setButtonBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mBitmap:Landroid/graphics/Bitmap;

    .line 88
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mText:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 57
    iput p1, p0, Lcom/htc/opensense/album/plugin/CommandBarButton;->mId:I

    .line 58
    return-void
.end method
