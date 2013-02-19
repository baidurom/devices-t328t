.class public Lcom/htc/sunny/SPresentationContainerLayout;
.super Ljava/lang/Object;
.source "SPresentationContainerLayout.java"


# instance fields
.field public mAlpha:I

.field public mHeight:I

.field public mRotation:Lcom/htc/sunny/Vector3F;

.field public mScale:Lcom/htc/sunny/Vector3F;

.field public mTranslation:Lcom/htc/sunny/Vector3F;

.field public mVisible:Z

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/high16 v1, 0x3f80

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 45
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    .line 54
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    .line 64
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    .line 73
    iput v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    .line 82
    iput v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mVisible:Z

    .line 95
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/high16 v1, 0x3f80

    .line 105
    iget-object v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny/Vector3F;->reset()V

    .line 106
    iget-object v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny/Vector3F;->reset()V

    .line 107
    iget-object v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1, v1, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(FFF)V

    .line 109
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    .line 110
    iput v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    .line 111
    iput v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mVisible:Z

    .line 114
    return-void
.end method

.method public setLayout(Lcom/htc/sunny/SPresentationContainerLayout;)V
    .locals 2
    .parameter "layout"

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v1, p1, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 123
    iget-object v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v1, p1, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 124
    iget-object v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v1, p1, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 125
    iget v0, p1, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    iput v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    .line 126
    iget v0, p1, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    iput v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    .line 127
    iget v0, p1, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    iput v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    .line 128
    iget-boolean v0, p1, Lcom/htc/sunny/SPresentationContainerLayout;->mVisible:Z

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mVisible:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 137
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Translation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " z:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "Rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " z:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, "Scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " z:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny/SPresentationContainerLayout;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
