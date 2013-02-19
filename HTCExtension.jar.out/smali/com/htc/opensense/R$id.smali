.class public final Lcom/htc/opensense/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final avatar:I

.field public static final content:I

.field public static final image:I

.field public static final name:I

.field public static final subcontent:I

.field public static final subcontent_ext:I

.field public static final txt_1x1:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/htc/opensense/R$id;->get_content()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->content:I

    .line 16
    invoke-static {}, Lcom/htc/opensense/R$id;->get_subcontent()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->subcontent:I

    .line 17
    invoke-static {}, Lcom/htc/opensense/R$id;->get_subcontent_ext()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->subcontent_ext:I

    .line 22
    invoke-static {}, Lcom/htc/opensense/R$id;->get_txt_1x1()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->txt_1x1:I

    .line 27
    invoke-static {}, Lcom/htc/opensense/R$id;->get_image()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->image:I

    .line 32
    invoke-static {}, Lcom/htc/opensense/R$id;->get_name()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->name:I

    .line 33
    invoke-static {}, Lcom/htc/opensense/R$id;->get_avatar()I

    move-result v0

    sput v0, Lcom/htc/opensense/R$id;->avatar:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final get_avatar()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x20200fd

    return v0
.end method

.method private static final get_content()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x20200fe

    return v0
.end method

.method private static final get_image()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x20200d5

    return v0
.end method

.method private static final get_name()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x2020061

    return v0
.end method

.method private static final get_subcontent()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x20200ff

    return v0
.end method

.method private static final get_subcontent_ext()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x2020100

    return v0
.end method

.method private static final get_txt_1x1()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x20200f1

    return v0
.end method
