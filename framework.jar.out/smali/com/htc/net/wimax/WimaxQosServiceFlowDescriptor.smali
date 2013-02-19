.class public Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;
.super Lcom/htc/net/FourG/QosServiceFlowDescriptor;
.source "WimaxQosServiceFlowDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;,
        Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field params:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private schedulingClass:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/QosServiceFlowDescriptor;-><init>(Landroid/os/Parcel;)V

    .line 67
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->params:Ljava/util/EnumMap;

    .line 175
    invoke-static {}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->values()[Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->schedulingClass:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 178
    .local v0, keys:[I
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;)V
    .locals 2
    .parameter "description"
    .parameter "direction"
    .parameter "schedulingClass"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor;-><init>(Ljava/lang/String;Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;)V

    .line 67
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->params:Ljava/util/EnumMap;

    .line 72
    iput-object p3, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->schedulingClass:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    .line 73
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getQosParameter(Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;)Ljava/lang/Object;
    .locals 1
    .parameter "param"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->params:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->params:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getSchedulingClass()Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->schedulingClass:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setQosParameter(Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;Ljava/lang/Object;)Z
    .locals 1
    .parameter "param"
    .parameter "value"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->params:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public setSchedulingClass(Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;)V
    .locals 0
    .parameter "schedulingClass"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->schedulingClass:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 126
    const-string v2, ""

    .line 127
    .local v2, paramsStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->params:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    .line 129
    .local v0, e:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->params:Ljava/util/EnumMap;

    invoke-virtual {v5, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    goto :goto_0

    .line 132
    .end local v0           #e:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v3, ret:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-super {p0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", schedulingClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->schedulingClass:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    invoke-virtual {v5}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", params {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 146
    iget-object v5, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->schedulingClass:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    invoke-virtual {v5}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->ordinal()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v5, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->params:Ljava/util/EnumMap;

    invoke-virtual {v5}, Ljava/util/EnumMap;->size()I

    move-result v5

    new-array v3, v5, [I

    .line 149
    .local v3, keys:[I
    iget-object v5, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->params:Ljava/util/EnumMap;

    invoke-virtual {v5}, Ljava/util/EnumMap;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/Object;

    .line 150
    .local v4, values:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 151
    .local v2, ii:I
    iget-object v5, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->params:Ljava/util/EnumMap;

    invoke-virtual {v5}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    .line 153
    .local v0, e:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;
    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->ordinal()I

    move-result v5

    aput v5, v3, v2

    .line 154
    iget-object v5, p0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;->params:Ljava/util/EnumMap;

    invoke-virtual {v5, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v0           #e:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 158
    return-void
.end method
