.class public Lcom/htc/opensense/social/data/FaceTag;
.super Lcom/htc/opensense/social/data/Attachment;
.source "FaceTag.java"


# instance fields
.field public center_x:F
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "center_x"
    .end annotation
.end field

.field public center_y:F
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "center_y"
    .end annotation
.end field

.field public height:F
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "height"
    .end annotation
.end field

.field public owner:Lcom/htc/opensense/social/data/Profile;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        notNull = true
        value = "owner"
    .end annotation
.end field

.field public tagged_uid:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "tagged_uid"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "text"
    .end annotation
.end field

.field public width:F
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/htc/opensense/social/data/FaceTag;

    invoke-direct {p0, v0}, Lcom/htc/opensense/social/data/Attachment;-><init>(Ljava/lang/Class;)V

    .line 9
    return-void
.end method


# virtual methods
.method public getCenter_x()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/opensense/social/data/FaceTag;->center_x:F

    return v0
.end method

.method public getCenter_y()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/htc/opensense/social/data/FaceTag;->center_y:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/htc/opensense/social/data/FaceTag;->height:F

    return v0
.end method

.method public getOwner()Lcom/htc/opensense/social/data/Profile;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    return-object v0
.end method

.method public getTagged_uid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/opensense/social/data/FaceTag;->tagged_uid:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/opensense/social/data/FaceTag;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/htc/opensense/social/data/FaceTag;->width:F

    return v0
.end method

.method public setCenter_x(F)V
    .locals 0
    .parameter "center_x"

    .prologue
    .line 80
    iput p1, p0, Lcom/htc/opensense/social/data/FaceTag;->center_x:F

    .line 81
    return-void
.end method

.method public setCenter_y(F)V
    .locals 0
    .parameter "center_y"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/opensense/social/data/FaceTag;->center_y:F

    .line 89
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 104
    iput p1, p0, Lcom/htc/opensense/social/data/FaceTag;->height:F

    .line 105
    return-void
.end method

.method public setOwner(Lcom/htc/opensense/social/data/Profile;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/opensense/social/data/FaceTag;->owner:Lcom/htc/opensense/social/data/Profile;

    .line 73
    return-void
.end method

.method public setTagged_uid(Ljava/lang/String;)V
    .locals 0
    .parameter "tagged_uid"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/opensense/social/data/FaceTag;->tagged_uid:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/opensense/social/data/FaceTag;->text:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 96
    iput p1, p0, Lcom/htc/opensense/social/data/FaceTag;->width:F

    .line 97
    return-void
.end method
