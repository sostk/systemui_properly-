.class public Lcom/meizu/common/preference/CheckBoxPreferenceMz;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxPreferenceMz.java"


# static fields
.field private static sPerformClick:Ljava/lang/reflect/Method;

.field private static sRecycle:Ljava/lang/reflect/Field;


# instance fields
.field private mTextLayout:Landroid/view/View;

.field private mTextLayoutClickListener:Landroid/view/View$OnClickListener;

.field private mTextLayoutEnabled:Z

.field private mTextLayoutLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mWidgetFrame:Landroid/view/View;

.field private mWidgetFrameEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    .line 54
    sget v0, Lcom/meizu/common/R$layout;->mz_preference_checkbox:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setLayoutResource(I)V

    .line 56
    invoke-direct {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mzShouldRecycle()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    .line 60
    sget v0, Lcom/meizu/common/R$layout;->mz_preference_checkbox:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setLayoutResource(I)V

    .line 62
    invoke-direct {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mzShouldRecycle()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/preference/CheckBoxPreferenceMz;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/preference/CheckBoxPreferenceMz;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->performClick()V

    return-void
.end method

.method private mzShouldRecycle()V
    .locals 5

    .prologue
    const/16 v4, 0x13

    const/4 v1, 0x1

    .line 205
    :try_start_0
    sget-object v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 213
    :goto_0
    sget-object v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    :goto_1
    return-void

    .line 206
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_2

    const-class v2, Landroid/preference/Preference;

    const-string/jumbo v3, "mHasSpecifiedLayout"

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    .line 211
    :goto_2
    sget-object v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-class v2, Landroid/preference/Preference;

    const-string/jumbo v3, "mCanRecycleLayout"

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private performClick()V
    .locals 5

    .prologue
    .line 179
    :try_start_0
    sget-object v0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    sget-object v0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :goto_1
    return-void

    :cond_0
    const-class v0, Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "performClick"

    const/4 v2, 0x1

    .line 180
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/preference/PreferenceScreen;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    .line 181
    sget-object v0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 166
    :cond_0
    return-void

    :cond_1
    move-object v1, p1

    .line 161
    check-cast v1, Landroid/view/ViewGroup;

    .line 162
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 163
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 162
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public isTextLayoutEnabled()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    return v0
.end method

.method public isWidgetFrameEnabled()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    :goto_1
    const v4, 0x1020001

    .line 99
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "checkableView":Landroid/view/View;
    if-nez v1, :cond_5

    .line 124
    .end local v1    # "checkableView":Landroid/view/View;
    :cond_2
    :goto_2
    return-void

    .line 92
    :cond_3
    iget-boolean v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    if-nez v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    iget-boolean v5, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    invoke-direct {p0, v4, v5}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_0

    .line 96
    :cond_4
    iget-boolean v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    if-nez v4, :cond_1

    .line 97
    iget-object v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    iget-boolean v5, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    invoke-direct {p0, v4, v5}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_1

    .line 101
    .restart local v1    # "checkableView":Landroid/view/View;
    :cond_5
    instance-of v4, v1, Landroid/widget/Checkable;

    if-eqz v4, :cond_2

    .line 102
    instance-of v4, v1, Landroid/widget/CheckBox;

    if-nez v4, :cond_6

    .line 120
    :goto_3
    check-cast v1, Landroid/widget/Checkable;

    .end local v1    # "checkableView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->isChecked()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2

    .restart local v1    # "checkableView":Landroid/view/View;
    :cond_6
    move-object v0, v1

    .line 103
    check-cast v0, Landroid/widget/CheckBox;

    .line 105
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->isChecked()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$string;->mc_value_not_checked:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "checkedDescription":Ljava/lang/String;
    :goto_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 108
    .local v3, "contentDescription":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_8

    .line 111
    :goto_5
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_9

    .line 114
    :goto_6
    iget-object v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-nez v4, :cond_a

    .line 117
    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 105
    .end local v2    # "checkedDescription":Ljava/lang/String;
    .end local v3    # "contentDescription":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$string;->mc_value_checked:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 109
    .restart local v2    # "checkedDescription":Ljava/lang/String;
    .restart local v3    # "contentDescription":Ljava/lang/String;
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 112
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 115
    :cond_a
    iget-object v4, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "layout":Landroid/view/View;
    sget v1, Lcom/meizu/common/R$id;->mz_preference_text_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutClickListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutLongClickListener:Landroid/view/View$OnLongClickListener;

    if-nez v1, :cond_1

    :goto_1
    const v1, 0x1020018

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    new-instance v2, Lcom/meizu/common/preference/CheckBoxPreferenceMz$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz$1;-><init>(Lcom/meizu/common/preference/CheckBoxPreferenceMz;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-object v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1
.end method

.method public setTextLayoutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutClickListener:Landroid/view/View$OnClickListener;

    .line 171
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setTextLayoutEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    if-ne v0, p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iput-boolean p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    .line 130
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setTextLayoutLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 191
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public setWidgetFrameEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    if-ne v0, p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iput-boolean p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    .line 144
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_0
.end method
