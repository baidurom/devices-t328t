.class public final Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/UnknownFieldSet$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/UnknownFieldSet$Field;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1011
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->create()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 3

    .prologue
    .line 1014
    new-instance v0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;-><init>()V

    .line 1015
    .local v0, builder:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    new-instance v1, Lcom/htc/protobuf/UnknownFieldSet$Field;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;-><init>(Lcom/htc/protobuf/UnknownFieldSet$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    .line 1016
    return-object v0
.end method


# virtual methods
.method public addFixed32(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$602(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    return-object p0
.end method

.method public addFixed64(J)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$702(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    return-object p0
.end method

.method public addGroup(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$902(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    return-object p0
.end method

.method public addLengthDelimited(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$802(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    return-object p0
.end method

.method public addVarint(J)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$502(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/UnknownFieldSet$Field;
    .locals 3

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$502(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1037
    :goto_0
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1038
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$602(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1042
    :goto_1
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1043
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$702(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1047
    :goto_2
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1048
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$802(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1053
    :goto_3
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1054
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$902(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1059
    :goto_4
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    .line 1060
    .local v0, returnMe:Lcom/htc/protobuf/UnknownFieldSet$Field;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    .line 1061
    return-object v0

    .line 1035
    .end local v0           #returnMe:Lcom/htc/protobuf/UnknownFieldSet$Field;
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$502(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1040
    :cond_1
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$602(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 1045
    :cond_2
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$702(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 1050
    :cond_3
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$802(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 1056
    :cond_4
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$902(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_4
.end method

.method public clear()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2

    .prologue
    .line 1070
    new-instance v0, Lcom/htc/protobuf/UnknownFieldSet$Field;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;-><init>(Lcom/htc/protobuf/UnknownFieldSet$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    .line 1071
    return-object p0
.end method

.method public mergeFrom(Lcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1084
    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$502(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1090
    :cond_1
    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1091
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$602(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1094
    :cond_2
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1096
    :cond_3
    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1097
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1098
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$702(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1100
    :cond_4
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1102
    :cond_5
    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1103
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1104
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$802(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1106
    :cond_6
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1108
    :cond_7
    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1109
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1110
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$902(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 1112
    :cond_8
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1114
    :cond_9
    return-object p0
.end method
