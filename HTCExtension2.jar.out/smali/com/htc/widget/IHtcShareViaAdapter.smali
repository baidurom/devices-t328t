.class abstract Lcom/htc/widget/IHtcShareViaAdapter;
.super Landroid/widget/BaseAdapter;
.source "IHtcShareViaAdapter.java"


# static fields
.field static INDEX_OF_MORE:I = 0x0

.field static final mBgSetDraw:I = 0x1

.field static final mBgSetResId:I = 0x2

.field static final mExpandDefault:I = 0xa0

.field static final mHadExpand:I = 0xa2

.field static final mNeedExpand:I = 0xa1

.field static final mNotExpand:I = 0xa3


# instance fields
.field FILE_NAME:Ljava/lang/String;

.field SEE_ALL:Ljava/lang/CharSequence;

.field VIEW_SEE_ALL:I

.field WP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x4

    sput v0, Lcom/htc/widget/IHtcShareViaAdapter;->INDEX_OF_MORE:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/IHtcShareViaAdapter;->WP:I

    .line 23
    const-string v0, "task_specific_history_file_name.xml"

    iput-object v0, p0, Lcom/htc/widget/IHtcShareViaAdapter;->FILE_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "see all..."

    iput-object v0, p0, Lcom/htc/widget/IHtcShareViaAdapter;->SEE_ALL:Ljava/lang/CharSequence;

    .line 27
    const v0, 0x10404d8

    iput v0, p0, Lcom/htc/widget/IHtcShareViaAdapter;->VIEW_SEE_ALL:I

    return-void
.end method


# virtual methods
.method abstract expand()V
.end method

.method abstract isDimissOk()Z
.end method

.method abstract isExpanded()I
.end method

.method abstract setIsDimissOk(Z)V
.end method

.method abstract setListItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method abstract setListItemBackgroundResource(I)V
.end method

.method abstract setListItemTextAppearance(I)V
.end method

.method abstract shrink()V
.end method
