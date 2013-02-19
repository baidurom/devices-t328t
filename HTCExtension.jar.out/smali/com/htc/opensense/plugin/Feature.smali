.class public Lcom/htc/opensense/plugin/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# instance fields
.field public id:I

.field public name:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "version"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/htc/opensense/plugin/Feature;->id:I

    .line 35
    iput p2, p0, Lcom/htc/opensense/plugin/Feature;->version:I

    .line 36
    iput-object p3, p0, Lcom/htc/opensense/plugin/Feature;->name:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/htc/opensense/plugin/Feature;->type:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/htc/opensense/plugin/Feature;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/opensense/plugin/Feature;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/opensense/plugin/Feature;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense/plugin/Feature;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/opensense/plugin/Feature;->version:I

    return v0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/opensense/plugin/Feature;->id:I

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/opensense/plugin/Feature;->name:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/opensense/plugin/Feature;->type:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 85
    iput p1, p0, Lcom/htc/opensense/plugin/Feature;->version:I

    .line 86
    return-void
.end method
