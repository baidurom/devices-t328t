.class Landroid/webkit/EditableWebView$EditableQuickActions;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Lcom/htc/textselection/QuickActions;
.implements Landroid/webkit/WebView$WrapActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditableQuickActions"
.end annotation


# instance fields
.field private final BUTTON_ID_BLUE:I

.field private final BUTTON_ID_COPY:I

.field private final BUTTON_ID_CUT:I

.field private final BUTTON_ID_FONTSTYLE:I

.field private final BUTTON_ID_GREEN:I

.field private final BUTTON_ID_HIGHLIGHT:I

.field private final BUTTON_ID_IMAGESTYLE:I

.field private final BUTTON_ID_IME:I

.field private final BUTTON_ID_OPEN_LINK:I

.field private final BUTTON_ID_PASTE:I

.field private final BUTTON_ID_PASTE_STYLE:I

.field private final BUTTON_ID_RED:I

.field private final BUTTON_ID_SELECT:I

.field private final BUTTON_ID_UNHIGHLIGHT:I

.field private final BUTTON_ID_YELLOW:I

.field private final G_EXTEND:I

.field private final G_HIGHLIGHT:I

.field private final G_MOVABLE:I

.field private final SELECT_FONT_ALIGNMENT:I

.field private final SELECT_FONT_ALIGNMENT_JUSTIFY:I

.field private final SELECT_FONT_ALIGNMENT_LEFT:I

.field private final SELECT_FONT_ALIGNMENT_RIGHT:I

.field private final SELECT_FONT_COLOR:I

.field private final SELECT_FONT_COLOR_BLACK:I

.field private final SELECT_FONT_COLOR_BLUE:I

.field private final SELECT_FONT_COLOR_GRAY:I

.field private final SELECT_FONT_COLOR_GREEN:I

.field private final SELECT_FONT_COLOR_RED:I

.field private final SELECT_FONT_COLOR_WHITE:I

.field private final SELECT_FONT_COLOR_YELLOW:I

.field private final SELECT_FONT_NONE:I

.field private final SELECT_FONT_SETTINGS:I

.field private final SELECT_FONT_SETTINGS_BOLDFACE:I

.field private final SELECT_FONT_SETTINGS_ITALIC:I

.field private final SELECT_FONT_SETTINGS_UNDERLINE:I

.field private final SELECT_FONT_SIZE:I

.field private final SELECT_FONT_SIZE_LARGE:I

.field private final SELECT_FONT_SIZE_LARGEST:I

.field private final SELECT_FONT_SIZE_LARGEST_PX:I

.field private final SELECT_FONT_SIZE_LARGE_PX:I

.field private final SELECT_FONT_SIZE_MEDIUM:I

.field private final SELECT_FONT_SIZE_MEDIUM_PX:I

.field private final SELECT_FONT_SIZE_SMALL:I

.field private final SELECT_FONT_SIZE_SMALL_PX:I

.field bFontBold:Z

.field bFontItalic:Z

.field bFontUnderline:Z

.field fWebViewTextScale:F

.field highlightMode:Z

.field icon_blue:Landroid/graphics/drawable/Drawable;

.field icon_copy:Landroid/graphics/drawable/Drawable;

.field icon_cut:Landroid/graphics/drawable/Drawable;

.field icon_font_style:Landroid/graphics/drawable/Drawable;

.field icon_green:Landroid/graphics/drawable/Drawable;

.field icon_highlight:Landroid/graphics/drawable/Drawable;

.field icon_image_style:Landroid/graphics/drawable/Drawable;

.field icon_ime_switch:Landroid/graphics/drawable/Drawable;

.field icon_open_link:Landroid/graphics/drawable/Drawable;

.field icon_paste:Landroid/graphics/drawable/Drawable;

.field icon_paste_styled:Landroid/graphics/drawable/Drawable;

.field icon_red:Landroid/graphics/drawable/Drawable;

.field icon_select:Landroid/graphics/drawable/Drawable;

.field icon_unhighlight:Landroid/graphics/drawable/Drawable;

.field icon_yellow:Landroid/graphics/drawable/Drawable;

.field mActionMode:Landroid/view/ActionMode;

.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/dialog/HtcAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field m_bFontStyleKeyUpDown:Z

.field private final m_nBlackColor_select:I

.field m_nBlueColor:I

.field private final m_nBlueColor_select:I

.field private final m_nGrayColor_select:I

.field m_nGreenColor:I

.field private final m_nGreenColor_select:I

.field m_nImgNode:[I

.field m_nRedColor:I

.field private final m_nRedColor_select:I

.field private final m_nWhiteColor_select:I

.field m_nYellowColor:I

.field private final m_nYellowColor_select:I

.field m_rectImgAttr:Landroid/graphics/Rect;

.field m_strImgPath:[Ljava/lang/String;

.field menuCopy:Landroid/view/MenuItem;

.field menuQuikckLookup:Landroid/view/MenuItem;

.field private onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

.field private onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

.field private resLoaded:Z

.field showQuickLookup:Z

.field str_blue:Ljava/lang/String;

.field str_copy:Ljava/lang/String;

.field str_cut:Ljava/lang/String;

.field str_font_style:Ljava/lang/String;

.field str_green:Ljava/lang/String;

.field str_highlight:Ljava/lang/String;

.field str_image_style:Ljava/lang/String;

.field str_ime_switch:Ljava/lang/String;

.field str_open_link:Ljava/lang/String;

.field str_paste:Ljava/lang/String;

.field str_paste_styled:Ljava/lang/String;

.field str_red:Ljava/lang/String;

.field str_select:Ljava/lang/String;

.field str_unhighlight:Ljava/lang/String;

.field str_yellow:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/16 v4, 0xff

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1763
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1764
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->G_EXTEND:I

    .line 1765
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->G_MOVABLE:I

    .line 1766
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->G_HIGHLIGHT:I

    .line 1768
    const/16 v0, 0x8

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_COPY:I

    .line 1769
    const/16 v0, 0x9

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_CUT:I

    .line 1770
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_SELECT:I

    .line 1771
    const/16 v0, 0xb

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_PASTE:I

    .line 1772
    const/16 v0, 0xc

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_PASTE_STYLE:I

    .line 1773
    const/16 v0, 0xd

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_IME:I

    .line 1774
    const/16 v0, 0xe

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_OPEN_LINK:I

    .line 1775
    const/16 v0, 0xf

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_HIGHLIGHT:I

    .line 1776
    const/16 v0, 0x10

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_GREEN:I

    .line 1777
    const/16 v0, 0x11

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_BLUE:I

    .line 1778
    const/16 v0, 0x12

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_YELLOW:I

    .line 1779
    const/16 v0, 0x13

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_RED:I

    .line 1780
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_UNHIGHLIGHT:I

    .line 1783
    const/16 v0, 0x15

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_FONTSTYLE:I

    .line 1785
    const/16 v0, 0x16

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_IMAGESTYLE:I

    .line 1788
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE:I

    .line 1789
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR:I

    .line 1790
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS:I

    .line 1791
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT:I

    .line 1792
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_NONE:I

    .line 1797
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_SMALL:I

    .line 1798
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_MEDIUM:I

    .line 1799
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGE:I

    .line 1800
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGEST:I

    .line 1804
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_SMALL_PX:I

    .line 1805
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_MEDIUM_PX:I

    .line 1806
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGE_PX:I

    .line 1807
    const/4 v0, 0x6

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGEST_PX:I

    .line 1811
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_WHITE:I

    .line 1812
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_BLACK:I

    .line 1813
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_GRAY:I

    .line 1814
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_RED:I

    .line 1815
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_GREEN:I

    .line 1816
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_YELLOW:I

    .line 1817
    const/4 v0, 0x6

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_BLUE:I

    .line 1820
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS_UNDERLINE:I

    .line 1821
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS_BOLDFACE:I

    .line 1822
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS_ITALIC:I

    .line 1825
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT_LEFT:I

    .line 1826
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT_JUSTIFY:I

    .line 1827
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT_RIGHT:I

    .line 1838
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_bFontStyleKeyUpDown:Z

    .line 1839
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->fWebViewTextScale:F

    .line 1882
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nImgNode:[I

    .line 1883
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_rectImgAttr:Landroid/graphics/Rect;

    .line 1884
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_strImgPath:[Ljava/lang/String;

    .line 1886
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nWhiteColor_select:I

    .line 1887
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlackColor_select:I

    .line 1888
    const/16 v0, 0x7f

    const/16 v1, 0x7f

    const/16 v2, 0x7f

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGrayColor_select:I

    .line 1889
    invoke-static {v4, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor_select:I

    .line 1890
    invoke-static {v4, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor_select:I

    .line 1891
    invoke-static {v3, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor_select:I

    .line 1892
    invoke-static {v3, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor_select:I

    .line 1895
    const v0, 0xd0f7a7

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    .line 1896
    const v0, 0xa6e1ff

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    .line 1897
    const v0, 0xffef99

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    .line 1898
    const v0, 0xffa6a6

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    .line 1900
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    .line 1902
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->resLoaded:Z

    .line 2200
    new-instance v0, Landroid/webkit/EditableWebView$EditableQuickActions$1;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$1;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    .line 2208
    new-instance v0, Landroid/webkit/EditableWebView$EditableQuickActions$2;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$2;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    .line 2577
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->showQuickLookup:Z

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1763
    invoke-direct {p0}, Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1763
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontStyle(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/EditableWebView$EditableQuickActions;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1763
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$3702(Landroid/webkit/EditableWebView$EditableQuickActions;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1763
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$3800(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1763
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontsize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1763
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontcolor(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1763
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogSettings(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1763
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogAlignment(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/EditableWebView$EditableQuickActions;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1763
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->getFontSizeIdx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1763
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nWhiteColor_select:I

    return v0
.end method

.method static synthetic access$4400(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1763
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlackColor_select:I

    return v0
.end method

.method static synthetic access$4500(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1763
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGrayColor_select:I

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1763
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor_select:I

    return v0
.end method

.method static synthetic access$4700(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1763
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor_select:I

    return v0
.end method

.method static synthetic access$4800(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1763
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor_select:I

    return v0
.end method

.method static synthetic access$4900(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1763
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor_select:I

    return v0
.end method

.method private getDialogFontStyleContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 2513
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2514
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getFontSize()I

    move-result v0

    .line 2517
    .local v0, TextSize_current:I
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->GetOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2520
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->GetOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #context:Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 2522
    .restart local v1       #context:Landroid/content/Context;
    :cond_0
    return-object v1
.end method

.method private getFontColorIdx(I)I
    .locals 1
    .parameter "nFontcolor_current"

    .prologue
    .line 2553
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nWhiteColor_select:I

    if-ne p1, v0, :cond_0

    .line 2554
    const/4 v0, 0x0

    .line 2568
    :goto_0
    return v0

    .line 2555
    :cond_0
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlackColor_select:I

    if-ne p1, v0, :cond_1

    .line 2556
    const/4 v0, 0x1

    goto :goto_0

    .line 2557
    :cond_1
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGrayColor_select:I

    if-ne p1, v0, :cond_2

    .line 2558
    const/4 v0, 0x2

    goto :goto_0

    .line 2559
    :cond_2
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor_select:I

    if-ne p1, v0, :cond_3

    .line 2560
    const/4 v0, 0x3

    goto :goto_0

    .line 2561
    :cond_3
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor_select:I

    if-ne p1, v0, :cond_4

    .line 2562
    const/4 v0, 0x4

    goto :goto_0

    .line 2563
    :cond_4
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor_select:I

    if-ne p1, v0, :cond_5

    .line 2564
    const/4 v0, 0x5

    goto :goto_0

    .line 2565
    :cond_5
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor_select:I

    if-ne p1, v0, :cond_6

    .line 2566
    const/4 v0, 0x6

    goto :goto_0

    .line 2568
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getFontSizeIdx(I)I
    .locals 3
    .parameter "nFontsize_current"

    .prologue
    .line 2527
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->GetOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2530
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    iget v0, v1, Landroid/webkit/WebSettings$TextSize;->value:I

    .line 2531
    .local v0, nWebViewTextScale:I
    int-to-float v1, v0

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->fWebViewTextScale:F

    .line 2532
    int-to-float v1, p1

    iget v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->fWebViewTextScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2534
    .end local v0           #nWebViewTextScale:I
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2547
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 2536
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2538
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2540
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 2542
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 2534
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadResource(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    const v6, 0x1080770

    const v8, 0x104000b

    const/4 v7, 0x0

    .line 1905
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1909
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x2080248

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    .line 1911
    const v5, 0x1040001

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_copy:Ljava/lang/String;

    .line 1915
    const v5, 0x1080767

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_cut:Landroid/graphics/drawable/Drawable;

    .line 1916
    const v5, 0x1040003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_cut:Ljava/lang/String;

    .line 1920
    const v5, 0x1080779

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_select:Landroid/graphics/drawable/Drawable;

    .line 1922
    const v5, 0x1040016

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_select:Ljava/lang/String;

    .line 1926
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    .line 1927
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste:Ljava/lang/String;

    .line 1931
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste_styled:Landroid/graphics/drawable/Drawable;

    .line 1932
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Styled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste_styled:Ljava/lang/String;

    .line 1937
    const v5, 0x1080768

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_font_style:Landroid/graphics/drawable/Drawable;

    .line 1938
    const v5, 0x1040562

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_font_style:Ljava/lang/String;

    .line 1941
    const v5, 0x4020006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_image_style:Landroid/graphics/drawable/Drawable;

    .line 1942
    const v5, 0x1040568

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_image_style:Ljava/lang/String;

    .line 1947
    const v5, 0x10403ad

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_ime_switch:Ljava/lang/String;

    .line 1949
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1953
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string/jumbo v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1954
    .local v4, target:Landroid/content/Intent;
    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1955
    .local v1, mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1956
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1957
    .local v0, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    .line 1959
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    const-string v5, "Open Link"

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_open_link:Ljava/lang/String;

    .line 1964
    const v5, 0x1080769

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_highlight:Landroid/graphics/drawable/Drawable;

    .line 1965
    const v5, 0x204022e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_highlight:Ljava/lang/String;

    .line 1969
    const v5, 0x108076c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_green:Landroid/graphics/drawable/Drawable;

    .line 1970
    const v5, 0x204022f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_green:Ljava/lang/String;

    .line 1971
    const v5, 0x206003c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    .line 1975
    const v5, 0x108076a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_blue:Landroid/graphics/drawable/Drawable;

    .line 1976
    const v5, 0x2040230

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_blue:Ljava/lang/String;

    .line 1977
    const v5, 0x206003d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    .line 1981
    const v5, 0x108076e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_yellow:Landroid/graphics/drawable/Drawable;

    .line 1982
    const v5, 0x2040231

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_yellow:Ljava/lang/String;

    .line 1983
    const v5, 0x206003e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    .line 1987
    const v5, 0x108076d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_red:Landroid/graphics/drawable/Drawable;

    .line 1988
    const v5, 0x2040232

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_red:Ljava/lang/String;

    .line 1989
    const v5, 0x206003f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    .line 1993
    const v5, 0x108076b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_unhighlight:Landroid/graphics/drawable/Drawable;

    .line 1994
    const v5, 0x2040233

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_unhighlight:Ljava/lang/String;

    .line 1995
    return-void
.end method

.method private onCreateDialogAlignment(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2470
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2471
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2473
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040567

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1070040

    const/4 v3, -0x1

    new-instance v4, Landroid/webkit/EditableWebView$EditableQuickActions$14;

    invoke-direct {v4, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$14;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$13;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$13;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 2507
    .local v0, dialog_font_style_alignment:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2508
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2509
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    .line 2510
    return-void
.end method

.method private onCreateDialogFontStyle(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2219
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2220
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2223
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040563

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x107003c

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$6;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$6;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$5;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$5;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/webkit/EditableWebView$EditableQuickActions$4;

    invoke-direct {v2, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$4;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/webkit/EditableWebView$EditableQuickActions$3;

    invoke-direct {v2, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$3;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 2281
    .local v0, dialog_font_style:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2282
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2283
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    .line 2284
    return-void
.end method

.method private onCreateDialogFontcolor(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2347
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2348
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2351
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040565

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x107003e

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3}, Landroid/webkit/EditableWebView;->getForeColor()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/EditableWebView$EditableQuickActions;->getFontColorIdx(I)I

    move-result v3

    new-instance v4, Landroid/webkit/EditableWebView$EditableQuickActions$10;

    invoke-direct {v4, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$10;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$9;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$9;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 2398
    .local v0, dialog_font_style_fontcolor:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2399
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2400
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    .line 2401
    return-void
.end method

.method private onCreateDialogFontsize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2288
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2289
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2292
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040564

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x107003d

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3}, Landroid/webkit/EditableWebView;->getFontSize()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/EditableWebView$EditableQuickActions;->getFontSizeIdx(I)I

    move-result v3

    new-instance v4, Landroid/webkit/EditableWebView$EditableQuickActions$8;

    invoke-direct {v4, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$8;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$7;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$7;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 2340
    .local v0, dialog_font_style_fontsize:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2341
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2342
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    .line 2343
    return-void
.end method

.method private onCreateDialogSettings(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2405
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2406
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2409
    :cond_0
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getUnderlineState()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    .line 2410
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getBoldState()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    .line 2411
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getItalicState()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    .line 2412
    const/4 v2, 0x3

    new-array v0, v2, [Z

    iget-boolean v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    aput-boolean v2, v0, v3

    iget-boolean v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    aput-boolean v2, v0, v4

    const/4 v2, 0x2

    iget-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    aput-boolean v3, v0, v2

    .line 2414
    .local v0, arrayIsChecked:[Z
    new-instance v2, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v2, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040566

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x107003f

    new-instance v5, Landroid/webkit/EditableWebView$EditableQuickActions$12;

    invoke-direct {v5, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$12;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v2, v3, v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v5, Landroid/webkit/EditableWebView$EditableQuickActions$11;

    invoke-direct {v5, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$11;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v2, v3, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 2463
    .local v1, dialog_font_style_settings:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2464
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2465
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    .line 2466
    return-void

    .end local v0           #arrayIsChecked:[Z
    .end local v1           #dialog_font_style_settings:Lcom/htc/dialog/HtcAlertDialog;
    :cond_1
    move v2, v4

    .line 2409
    goto :goto_0

    :cond_2
    move v2, v4

    .line 2410
    goto :goto_1

    :cond_3
    move v2, v4

    .line 2411
    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 2785
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2786
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2788
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 2769
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2607
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 7
    .parameter "actions"

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1999
    iget-boolean v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->resLoaded:Z

    if-nez v0, :cond_0

    .line 2000
    iput-boolean v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->resLoaded:Z

    .line 2001
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkit/EditableWebView;->access$3000(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/EditableWebView$EditableQuickActions;->loadResource(Landroid/content/Context;)V

    .line 2003
    :cond_0
    const/16 v0, 0x8

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_copy:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2004
    const/16 v0, 0x9

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_cut:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_cut:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2005
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v6, v0, v1}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2007
    const/16 v0, 0xf

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_highlight:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_highlight:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2010
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "3.5"

    if-eq v0, v1, :cond_1

    .line 2011
    const/16 v0, 0x15

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_font_style:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_font_style:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2014
    :cond_1
    const/16 v0, 0x16

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_image_style:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_image_style:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2019
    const/16 v0, 0xa

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_select:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_select:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2020
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v6, v0, v1}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2022
    const/16 v0, 0xd

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_ime_switch:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_ime_switch:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2023
    const/16 v0, 0xe

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_open_link:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2026
    const/16 v0, 0x10

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_green:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_green:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2027
    const/16 v0, 0x11

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_blue:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_blue:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2028
    const/16 v0, 0x12

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_yellow:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_yellow:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2029
    const/16 v0, 0x13

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_red:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_red:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2030
    const/16 v0, 0x14

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_unhighlight:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_unhighlight:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2031
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2776
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v0, v1, :cond_0

    .line 2777
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 2778
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2673
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 12
    .parameter "actions"

    .prologue
    const/4 v6, 0x2

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 2035
    invoke-interface {p1, v7, v7}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 2036
    invoke-interface {p1, v11, v7}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 2037
    invoke-interface {p1, v6, v7}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 2039
    const/4 v3, 0x0

    .line 2040
    .local v3, groupID:I
    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, v8, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v8}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v8

    sget-object v9, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v8, v9, :cond_6

    .line 2041
    iget-boolean v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    if-eqz v8, :cond_5

    move v3, v6

    .line 2046
    :goto_0
    invoke-interface {p1, v3, v11}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 2049
    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v6, v6, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v6, v6, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v6}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v6, v6, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v6}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v6

    const-string/jumbo v8, "text/plain"

    invoke-virtual {v6, v8}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v6, v6, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v6}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ne v6, v11, :cond_1

    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v6, v6, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v6}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 2055
    :cond_0
    const/16 v6, 0xb

    invoke-interface {p1, v3, v6}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 2056
    .local v0, a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_1

    .line 2057
    invoke-interface {v0, v7}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 2061
    .end local v0           #a:Lcom/htc/textselection/Action;
    :cond_1
    const/16 v6, 0x16

    invoke-interface {p1, v3, v6}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v5

    .line 2062
    .local v5, imageaction:Lcom/htc/textselection/Action;
    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_strImgPath:[Ljava/lang/String;

    iget-object v9, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nImgNode:[I

    iget-object v10, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_rectImgAttr:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v9, v10}, Landroid/webkit/EditableWebView;->GetImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)Z

    move-result v2

    .line 2063
    .local v2, bIsImage:Z
    if-eqz v5, :cond_3

    .line 2064
    if-eqz v2, :cond_2

    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;
    invoke-static {v6}, Landroid/webkit/EditableWebView;->access$3100(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$OnImageSelectedListener;

    move-result-object v6

    if-nez v6, :cond_3

    .line 2065
    :cond_2
    invoke-interface {v5, v7}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 2077
    :cond_3
    const/16 v6, 0xe

    invoke-interface {p1, v3, v6}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v1

    .line 2078
    .local v1, aLink:Lcom/htc/textselection/Action;
    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v6, v6, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-nez v6, :cond_7

    const-string v4, ""

    .line 2079
    .local v4, href:Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2080
    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    #setter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/webkit/EditableWebView;->access$3202(Landroid/webkit/EditableWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 2081
    if-eqz v1, :cond_4

    .line 2082
    invoke-interface {v1, v11}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 2096
    :cond_4
    :goto_2
    return-void

    .end local v1           #aLink:Lcom/htc/textselection/Action;
    .end local v2           #bIsImage:Z
    .end local v4           #href:Ljava/lang/String;
    .end local v5           #imageaction:Lcom/htc/textselection/Action;
    :cond_5
    move v3, v7

    .line 2041
    goto/16 :goto_0

    .line 2043
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2078
    .restart local v1       #aLink:Lcom/htc/textselection/Action;
    .restart local v2       #bIsImage:Z
    .restart local v5       #imageaction:Lcom/htc/textselection/Action;
    :cond_7
    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v6, v6, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mEditingNode:I
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$2800(Landroid/webkit/EditableWebView;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/webkit/HTCWebCore;->nativeGetHREF(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2084
    .restart local v4       #href:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const-string v8, ""

    #setter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v6, v8}, Landroid/webkit/EditableWebView;->access$3202(Landroid/webkit/EditableWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 2085
    if-eqz v1, :cond_4

    .line 2086
    invoke-interface {v1, v7}, Lcom/htc/textselection/Action;->setVisible(Z)V

    goto :goto_2
.end method

.method public onQuickActionItemClicked(I)V
    .locals 6
    .parameter "actionID"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2100
    packed-switch p1, :pswitch_data_0

    .line 2194
    :cond_0
    :goto_0
    const/16 v1, 0xf

    if-eq v1, p1, :cond_1

    .line 2195
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1, v5}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 2196
    :cond_1
    return-void

    .line 2102
    :pswitch_0
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->copy()V

    goto :goto_0

    .line 2105
    :pswitch_1
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->cut()V

    goto :goto_0

    .line 2108
    :pswitch_2
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->pasteLatestContentFromClipboard()V

    goto :goto_0

    .line 2113
    :pswitch_3
    invoke-direct {p0}, Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontStyle(Landroid/content/Context;)V

    goto :goto_0

    .line 2119
    :pswitch_4
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;
    invoke-static {v1}, Landroid/webkit/EditableWebView;->access$3100(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$OnImageSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2121
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;
    invoke-static {v1}, Landroid/webkit/EditableWebView;->access$3100(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$OnImageSelectedListener;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_strImgPath:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nImgNode:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_rectImgAttr:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3, v4}, Landroid/webkit/EditableWebView$OnImageSelectedListener;->onImageSelected(Ljava/lang/String;ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 2133
    :pswitch_5
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->pasteLatestContentFromClipboard()V

    goto :goto_0

    .line 2136
    :pswitch_6
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2137
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    goto :goto_0

    .line 2156
    .end local v0           #r:Landroid/graphics/Rect;
    :pswitch_7
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView;->access$3300(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 2160
    :pswitch_8
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v2}, Landroid/webkit/EditableWebView;->access$3200(Landroid/webkit/EditableWebView;)Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/webkit/EditableWebView;->openLink(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/webkit/EditableWebView;->access$3400(Landroid/webkit/EditableWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 2163
    :pswitch_9
    iput-boolean v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    .line 2164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2165
    .restart local v0       #r:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 2166
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, v1, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1, v0, v5}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    .line 2169
    .end local v0           #r:Landroid/graphics/Rect;
    :pswitch_a
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v4, v1, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2170
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    iput v2, v1, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 2171
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    invoke-virtual {v1, v2, v4}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 2174
    :pswitch_b
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v4, v1, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2175
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    iput v2, v1, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 2176
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    invoke-virtual {v1, v2, v4}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 2179
    :pswitch_c
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v4, v1, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2180
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    iput v2, v1, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 2181
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    invoke-virtual {v1, v2, v4}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 2184
    :pswitch_d
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v4, v1, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2185
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    iput v2, v1, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 2186
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    invoke-virtual {v1, v2, v4}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 2189
    :pswitch_e
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v4, v1, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2190
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getBackColor()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 2100
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
