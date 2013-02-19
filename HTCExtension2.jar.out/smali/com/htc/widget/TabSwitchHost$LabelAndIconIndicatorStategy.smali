.class Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;
.super Ljava/lang/Object;
.source "TabSwitchHost.java"

# interfaces
.implements Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/TabSwitchHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mSelectedIcon:Landroid/graphics/drawable/Drawable;

.field private final mShowIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/htc/widget/TabSwitchHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "label"
    .parameter "icon"

    .prologue
    const/4 v0, 0x0

    .line 1123
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    .line 1125
    iput-object p3, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1126
    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    .line 1127
    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    .line 1128
    return-void
.end method

.method private constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "label"
    .parameter "icon"
    .parameter "selectedIcon"

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1132
    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    .line 1133
    iput-object p3, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1134
    iput-object p4, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    .line 1136
    return-void
.end method

.method private constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "icon"
    .parameter "selectedIcon"
    .parameter "showIcon"

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    .line 1141
    iput-object p3, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1142
    iput-object p4, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    .line 1143
    iput-object p5, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    .line 1144
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 1116
    invoke-direct/range {p0 .. p5}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 1116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1116
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInfoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInfoText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSelectedIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setInfoText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    .line 1174
    return-void
.end method
