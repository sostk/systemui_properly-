.class public Lcom/meizu/common/preference/ListPreference;
.super Landroid/preference/ListPreference;
.source "ListPreference.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/ListPreference$DropdownPopup;
    }
.end annotation


# static fields
.field private static sPreferenceView:Ljava/lang/reflect/Field;

.field private static sSetLayoutMode:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mClickedDialogEntryIndex:I

.field private mCurrentOrientation:I

.field private mDropDownWidth:I

.field private mMaxDropDownHeight:I

.field private mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

.field private mPreferenceViewExt:Landroid/view/View;

.field private mSingleChoiceItemLayout:I

.field private mVto:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/meizu/common/preference/ListPreference;->mAdapter:Landroid/widget/ListAdapter;

    .line 72
    sget-object v1, Lcom/meizu/common/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->ListPreference_mcDropDownWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mz_popup_menu_item_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/preference/ListPreference;->mDropDownWidth:I

    .line 76
    sget v1, Lcom/meizu/common/R$styleable;->ListPreference_mcMaxDropDownHeight:I

    iget v2, p0, Lcom/meizu/common/preference/ListPreference;->mMaxDropDownHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/preference/ListPreference;->mMaxDropDownHeight:I

    .line 79
    sget v1, Lcom/meizu/common/R$styleable;->ListPreference_mcSingleChoiceItemLayout:I

    sget v2, Lcom/meizu/common/R$layout;->mz_select_popup_singlechoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/preference/ListPreference;->mSingleChoiceItemLayout:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/preference/ListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ListPreference;

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/common/preference/ListPreference;->mClickedDialogEntryIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/preference/ListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/preference/ListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/meizu/common/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/preference/ListPreference;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ListPreference;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/preference/ListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ListPreference;

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/common/preference/ListPreference;->mDropDownWidth:I

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/common/preference/ListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/preference/ListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/meizu/common/preference/ListPreference;->mDropDownWidth:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/meizu/common/preference/ListPreference;->sSetLayoutMode:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0
    .param p0, "x0"    # Ljava/lang/reflect/Method;

    .prologue
    .line 51
    sput-object p0, Lcom/meizu/common/preference/ListPreference;->sSetLayoutMode:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/common/preference/ListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ListPreference;

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/common/preference/ListPreference;->mMaxDropDownHeight:I

    return v0
.end method


# virtual methods
.method public getDropdownPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 92
    iput-object p1, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    .line 93
    return-void
.end method

.method protected onClick()V
    .locals 8

    .prologue
    .line 99
    :try_start_0
    sget-object v2, Lcom/meizu/common/preference/ListPreference;->sPreferenceView:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 102
    :goto_0
    sget-object v2, Lcom/meizu/common/preference/ListPreference;->sPreferenceView:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "ob":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 110
    .end local v1    # "ob":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/meizu/common/preference/ListPreference;->mCurrentOrientation:I

    .line 111
    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    if-eqz v2, :cond_2

    .line 115
    :goto_2
    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 116
    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mVto:Landroid/view/ViewTreeObserver;

    .line 117
    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mVto:Landroid/view/ViewTreeObserver;

    if-nez v2, :cond_3

    .line 121
    :goto_3
    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    iget-object v3, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 122
    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_4

    .line 125
    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/meizu/common/preference/ListPreference;->mSingleChoiceItemLayout:I

    sget v6, Lcom/meizu/common/R$id;->text1:I

    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    :goto_4
    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v2}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->show()V

    .line 130
    return-void

    :cond_0
    :try_start_1
    const-class v2, Landroid/preference/Preference;

    const-string/jumbo v3, "mPreferenceView"

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/preference/ListPreference;->sPreferenceView:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "ob":Ljava/lang/Object;
    :cond_1
    :try_start_2
    check-cast v1, Landroid/view/View;

    .end local v1    # "ob":Ljava/lang/Object;
    iput-object v1, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 112
    :cond_2
    new-instance v2, Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;-><init>(Lcom/meizu/common/preference/ListPreference;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    goto :goto_2

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mVto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3

    .line 123
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    iget-object v3, p0, Lcom/meizu/common/preference/ListPreference;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4
.end method

.method public onDismiss()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference;->onDropdownPopupClosed()V

    .line 259
    iget-object v1, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 260
    iget-object v1, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 261
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected onDropdownPopupClosed()V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 134
    .local v0, "ev":[Ljava/lang/CharSequence;
    iget v2, p0, Lcom/meizu/common/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-gez v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    if-eqz v0, :cond_0

    .line 135
    iget v2, p0, Lcom/meizu/common/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v2, v0, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    if-nez v0, :cond_3

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->dismiss()V

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/meizu/common/preference/ListPreference;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 276
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v1}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->getAnchorView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    iget-object v1, p0, Lcom/meizu/common/preference/ListPreference;->mPreferenceViewExt:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 279
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->show()V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/preference/ListPreference;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0
.end method

.method public setDropDownWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/meizu/common/preference/ListPreference;->mDropDownWidth:I

    .line 159
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 288
    if-eqz p1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference;->mPopup:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->dismiss()V

    goto :goto_0
.end method

.method public setMaxDropDownHeight(I)V
    .locals 0
    .param p1, "maxheight"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/meizu/common/preference/ListPreference;->mMaxDropDownHeight:I

    .line 167
    return-void
.end method
