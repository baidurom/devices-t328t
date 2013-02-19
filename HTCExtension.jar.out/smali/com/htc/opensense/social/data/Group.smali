.class public Lcom/htc/opensense/social/data/Group;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field public id:Ljava/lang/String;

.field public members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Profile;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/opensense/social/data/Group;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/opensense/social/data/Group;->members:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/opensense/social/data/Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/opensense/social/data/Group;->id:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, members:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Profile;>;"
    iput-object p1, p0, Lcom/htc/opensense/social/data/Group;->members:Ljava/util/List;

    .line 79
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/opensense/social/data/Group;->name:Ljava/lang/String;

    .line 63
    return-void
.end method
