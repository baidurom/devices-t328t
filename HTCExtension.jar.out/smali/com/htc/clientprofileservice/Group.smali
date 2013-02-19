.class public Lcom/htc/clientprofileservice/Group;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/clientprofileservice/Group;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private grpIcon:Ljava/lang/String;

.field private grpIconFormat:Ljava/lang/String;

.field private grpIconSize:I

.field private id:I

.field private maxSize:I

.field private name:Ljava/lang/String;

.field private priority:I

.field private tiIcon:Ljava/lang/String;

.field private tiIconFormat:Ljava/lang/String;

.field private tiIconSize:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/htc/clientprofileservice/Group$1;

    invoke-direct {v0}, Lcom/htc/clientprofileservice/Group$1;-><init>()V

    sput-object v0, Lcom/htc/clientprofileservice/Group;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "type"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->id:I

    .line 10
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->type:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->priority:I

    .line 12
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->name:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->maxSize:I

    .line 14
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->grpIconSize:I

    .line 15
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIconFormat:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIcon:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->tiIconSize:I

    .line 18
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIconFormat:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIcon:Ljava/lang/String;

    .line 24
    iput p1, p0, Lcom/htc/clientprofileservice/Group;->id:I

    .line 25
    iput-object p2, p0, Lcom/htc/clientprofileservice/Group;->type:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->id:I

    .line 10
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->type:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->priority:I

    .line 12
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->name:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->maxSize:I

    .line 14
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->grpIconSize:I

    .line 15
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIconFormat:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIcon:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->tiIconSize:I

    .line 18
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIconFormat:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIcon:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/htc/clientprofileservice/Group;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/htc/clientprofileservice/Group;)V
    .locals 2
    .parameter "other"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->id:I

    .line 10
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->type:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->priority:I

    .line 12
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->name:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->maxSize:I

    .line 14
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->grpIconSize:I

    .line 15
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIconFormat:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIcon:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/htc/clientprofileservice/Group;->tiIconSize:I

    .line 18
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIconFormat:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIcon:Ljava/lang/String;

    .line 29
    iget v0, p1, Lcom/htc/clientprofileservice/Group;->id:I

    iput v0, p0, Lcom/htc/clientprofileservice/Group;->id:I

    .line 30
    iget-object v0, p1, Lcom/htc/clientprofileservice/Group;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->type:Ljava/lang/String;

    .line 31
    iget v0, p1, Lcom/htc/clientprofileservice/Group;->priority:I

    iput v0, p0, Lcom/htc/clientprofileservice/Group;->priority:I

    .line 32
    iget-object v0, p1, Lcom/htc/clientprofileservice/Group;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->name:Ljava/lang/String;

    .line 33
    iget v0, p1, Lcom/htc/clientprofileservice/Group;->maxSize:I

    iput v0, p0, Lcom/htc/clientprofileservice/Group;->maxSize:I

    .line 34
    iget v0, p1, Lcom/htc/clientprofileservice/Group;->grpIconSize:I

    iput v0, p0, Lcom/htc/clientprofileservice/Group;->grpIconSize:I

    .line 35
    iget-object v0, p1, Lcom/htc/clientprofileservice/Group;->grpIconFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIconFormat:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/htc/clientprofileservice/Group;->grpIcon:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIcon:Ljava/lang/String;

    .line 37
    iget v0, p1, Lcom/htc/clientprofileservice/Group;->tiIconSize:I

    iput v0, p0, Lcom/htc/clientprofileservice/Group;->tiIconSize:I

    .line 38
    iget-object v0, p1, Lcom/htc/clientprofileservice/Group;->tiIconFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIconFormat:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/htc/clientprofileservice/Group;->tiIcon:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIcon:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/clientprofileservice/Group;->id:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->type:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/clientprofileservice/Group;->priority:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->name:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/clientprofileservice/Group;->maxSize:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/clientprofileservice/Group;->grpIconSize:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIconFormat:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIcon:Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/clientprofileservice/Group;->tiIconSize:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIconFormat:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIcon:Ljava/lang/String;

    .line 343
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public getGrpIcon()[B
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIcon:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getGrpIconEncoded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getGrpIconFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIconFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getGrpIconSize()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/htc/clientprofileservice/Group;->grpIconSize:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/htc/clientprofileservice/Group;->id:I

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/htc/clientprofileservice/Group;->maxSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/htc/clientprofileservice/Group;->priority:I

    return v0
.end method

.method public getTiIcon()[B
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIcon:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getTiIconEncoded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTiIconFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIconFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getTiIconSize()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/htc/clientprofileservice/Group;->tiIconSize:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setGrpIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "encoded"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/clientprofileservice/Group;->grpIcon:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setGrpIconFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/clientprofileservice/Group;->grpIconFormat:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setGrpIconSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 75
    iput p1, p0, Lcom/htc/clientprofileservice/Group;->grpIconSize:I

    .line 76
    return-void
.end method

.method public setMaxSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 67
    iput p1, p0, Lcom/htc/clientprofileservice/Group;->maxSize:I

    .line 68
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/clientprofileservice/Group;->name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/clientprofileservice/Group;->priority:I

    .line 52
    return-void
.end method

.method public setTiIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "encoded"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/clientprofileservice/Group;->tiIcon:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setTiIconFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/clientprofileservice/Group;->tiIconFormat:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setTiIconSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/clientprofileservice/Group;->tiIconSize:I

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    const-string v0, "Group"

    .line 238
    .local v0, string:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/clientprofileservice/Group;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/clientprofileservice/Group;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/clientprofileservice/Group;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/clientprofileservice/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "max_size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/clientprofileservice/Group;->maxSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "grp_icon_size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/clientprofileservice/Group;->grpIconSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "grp_icon_format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/clientprofileservice/Group;->grpIconFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "grp_icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/htc/clientprofileservice/Group;->grpIcon:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ti_icon_size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/clientprofileservice/Group;->tiIconSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ti_icon_format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/clientprofileservice/Group;->tiIconFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ti_icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/htc/clientprofileservice/Group;->tiIcon:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0

    .line 264
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<binary>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 280
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<binary>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 318
    iget v0, p0, Lcom/htc/clientprofileservice/Group;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget v0, p0, Lcom/htc/clientprofileservice/Group;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget v0, p0, Lcom/htc/clientprofileservice/Group;->maxSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Lcom/htc/clientprofileservice/Group;->grpIconSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIconFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->grpIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget v0, p0, Lcom/htc/clientprofileservice/Group;->tiIconSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIconFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/htc/clientprofileservice/Group;->tiIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    return-void
.end method
