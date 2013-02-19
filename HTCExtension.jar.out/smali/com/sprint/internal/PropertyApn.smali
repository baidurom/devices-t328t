.class public Lcom/sprint/internal/PropertyApn;
.super Ljava/lang/Object;
.source "PropertyApn.java"


# static fields
.field public static final APN_TYPE_ARRAY:[Ljava/lang/String; = null

.field public static final GET_PDN_INDEX_ACTIVETIMER:I = 0x5

.field public static final GET_PDN_INDEX_AUTHTYPE:I = 0x6

.field public static final GET_PDN_INDEX_ENABLE:I = 0x2

.field public static final GET_PDN_INDEX_INDEXING:I = 0x0

.field public static final GET_PDN_INDEX_IPTYPE:I = 0x4

.field public static final GET_PDN_INDEX_NI:I = 0x3

.field public static final GET_PDN_INDEX_PASSWORD:I = 0x8

.field public static final GET_PDN_INDEX_TREENODE:I = 0x1

.field public static final GET_PDN_INDEX_USERNAME:I = 0x7

.field public static final PDN_TYPE_IPV4:Ljava/lang/String; = "IPv4"

.field public static final PDN_TYPE_IPV4V6:Ljava/lang/String; = "IPv4v6"

.field public static final PDN_TYPE_IPV6:Ljava/lang/String; = "IPv6"

.field public static final RIL_EHRPD:Ljava/lang/String; = "14"

.field public static final RIL_INTERFACE_NUM:I = 0xb

.field public static final RIL_LTE:Ljava/lang/String; = "13"

.field public static final RIL_PROJECT_FLAG:Ljava/lang/String; = "148"

.field public static final RIL_THREEGPP:Ljava/lang/String; = "3"

.field public static final SET_PDN_INDEX_ACTIVETIMER:I = 0x7

.field public static final SET_PDN_INDEX_AUTHTYPE:I = 0x8

.field public static final SET_PDN_INDEX_ENABLE:I = 0x4

.field public static final SET_PDN_INDEX_FIELD:I = 0x1

.field public static final SET_PDN_INDEX_INDEXING:I = 0x2

.field public static final SET_PDN_INDEX_IPTYPE:I = 0x6

.field public static final SET_PDN_INDEX_NI:I = 0x5

.field public static final SET_PDN_INDEX_PASSWORD:I = 0xa

.field public static final SET_PDN_INDEX_PROJECT:I = 0x0

.field public static final SET_PDN_INDEX_TREENODE:I = 0x3

.field public static final SET_PDN_INDEX_USERNAME:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ota"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "internet"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pam"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sprint/internal/PropertyApn;->APN_TYPE_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
