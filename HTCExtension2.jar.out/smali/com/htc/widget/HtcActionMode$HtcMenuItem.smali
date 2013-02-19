.class Lcom/htc/widget/HtcActionMode$HtcMenuItem;
.super Ljava/lang/Object;
.source "HtcActionMode.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcMenuItem"
.end annotation


# instance fields
.field mItemId:I

.field final synthetic this$0:Lcom/htc/widget/HtcActionMode;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcActionMode;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/htc/widget/HtcActionMode$HtcMenuItem;->this$0:Lcom/htc/widget/HtcActionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1481
    iput p2, p0, Lcom/htc/widget/HtcActionMode$HtcMenuItem;->mItemId:I

    .line 1482
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 1861
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 1852
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 1843
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1490
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 1500
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 1510
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1520
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1530
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 1540
    iget v0, p0, Lcom/htc/widget/HtcActionMode$HtcMenuItem;->mItemId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1558
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 1568
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 1578
    const/4 v0, 0x0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 1588
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1598
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1608
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 1618
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 1870
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 1628
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 1638
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1648
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1658
    const/4 v0, 0x0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .parameter "actionProvider"

    .prologue
    .line 1834
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1674
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1668
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1684
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1694
    const/4 v0, 0x0

    return-object v0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1704
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1714
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1730
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1724
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1740
    const/4 v0, 0x0

    return-object v0
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1548
    iput p1, p0, Lcom/htc/widget/HtcActionMode$HtcMenuItem;->mItemId:I

    .line 1549
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1750
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1
    .parameter "l"

    .prologue
    .line 1879
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1760
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1770
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1781
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "actionEnum"

    .prologue
    .line 1825
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1796
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1790
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1806
    const/4 v0, 0x0

    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1816
    const/4 v0, 0x0

    return-object v0
.end method
