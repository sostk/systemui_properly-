.class public Lcom/meizu/common/preference/ExpandableListPreference;
.super Landroid/preference/Preference;
.source "ExpandableListPreference.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;,
        Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;
    }
.end annotation


# instance fields
.field private ANIMATION_DURATION:I

.field private mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

.field private mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field public mIsExtand:Z

.field private mIsWaitingToChange:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mSummary:Landroid/widget/TextView;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z

.field private performClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/preference/ExpandableListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/preference/ExpandableListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    const/16 v1, 0x190

    .line 45
    iput v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->ANIMATION_DURATION:I

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mHandler:Landroid/os/Handler;

    .line 54
    iput-boolean v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsWaitingToChange:Z

    .line 499
    new-instance v1, Lcom/meizu/common/preference/ExpandableListPreference$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/preference/ExpandableListPreference$2;-><init>(Lcom/meizu/common/preference/ExpandableListPreference;)V

    iput-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->performClick:Ljava/lang/Runnable;

    .line 67
    sget-object v1, Lcom/meizu/common/R$styleable;->ExpandableListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->ExpandableListPreference_mcEntries:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 70
    sget v1, Lcom/meizu/common/R$styleable;->ExpandableListPreference_mcEntryValues:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    sget v1, Lcom/meizu/common/R$layout;->mc_expandable_preference_layout:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/ExpandableListPreference;->setLayoutResource(I)V

    .line 73
    new-instance v1, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-direct {v1, p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;-><init>(Lcom/meizu/common/preference/ExpandableListPreference;)V

    iput-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    .line 74
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_expandable_preference_inner_list_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->setMarginTop(I)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/preference/ExpandableListPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsWaitingToChange:Z

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/preference/ExpandableListPreference;)Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/preference/ExpandableListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/preference/ExpandableListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/preference/ExpandableListPreference;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/preference/ExpandableListPreference;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/meizu/common/preference/ExpandableListPreference;->setListSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/common/preference/ExpandableListPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/ExpandableListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/common/preference/ExpandableListPreference;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->performClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/preference/ExpandableListPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ExpandableListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setListSummary(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    :try_start_0
    const-class v4, Landroid/preference/Preference;

    const-string/jumbo v5, "mSummary"

    .line 484
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 485
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 486
    invoke-virtual {v3, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 497
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 496
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 496
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    if-nez p1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 202
    return v1

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 198
    :cond_2
    return v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 544
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->getValueIndex()I

    move-result v0

    .line 545
    .local v0, "index":I
    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public iSAnimating()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    if-nez v0, :cond_0

    .line 478
    const/4 v0, 0x0

    return v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->iSAnimating()Z

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 81
    sget v2, Lcom/meizu/common/R$id;->expand_listview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mListView:Landroid/widget/ListView;

    .line 82
    new-instance v2, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    invoke-virtual {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-direct {v2, p0, v3, v4}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;-><init>(Lcom/meizu/common/preference/ExpandableListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    const v2, 0x1020010

    .line 83
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    .line 84
    sget v2, Lcom/meizu/common/R$id;->pull_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 86
    .local v1, "selectedPosition":I
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    .line 124
    :cond_0
    :goto_0
    sget v2, Lcom/meizu/common/R$id;->container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 125
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 126
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-nez v2, :cond_5

    .line 135
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    if-nez v2, :cond_6

    .line 139
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    :goto_2
    return-void

    .line 86
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->getValueIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 90
    :goto_3
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/meizu/common/preference/ExpandableListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    invoke-virtual {v2, v1}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->setSelectedPosition(I)V

    .line 93
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    invoke-virtual {v2}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->notifyDataSetChanged()V

    .line 94
    iget-boolean v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    if-nez v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_4
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAdapter:Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;

    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->setTargetList(Landroid/widget/ListView;)V

    .line 101
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 103
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/meizu/common/preference/ExpandableListPreference$1;

    invoke-direct {v3, p0}, Lcom/meizu/common/preference/ExpandableListPreference$1;-><init>(Lcom/meizu/common/preference/ExpandableListPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->getValueIndex()I

    move-result v1

    goto :goto_3

    .line 95
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 128
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 136
    :cond_6
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_2
.end method

.method protected onClick()V
    .locals 14

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->iSAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    return-void

    .line 145
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsWaitingToChange:Z

    if-nez v0, :cond_0

    .line 148
    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    if-nez v0, :cond_2

    .line 156
    iget-object v7, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    iget-object v8, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->ANIMATION_DURATION:I

    int-to-long v12, v0

    invoke-virtual/range {v7 .. v13}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;IJ)V

    .line 158
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->animateHeightPrt()V

    .line 159
    iput-boolean v5, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    .line 161
    :goto_0
    return-void

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->ANIMATION_DURATION:I

    int-to-long v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;IJ)V

    .line 152
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->animateHeightPrt()V

    .line 153
    iput-boolean v11, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 208
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 174
    if-nez p1, :cond_0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/meizu/common/preference/ExpandableListPreference;->setValue(Ljava/lang/String;)V

    .line 176
    return-void

    .line 174
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ExpandableListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public performCollapseAnim()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 164
    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mSummary:Landroid/widget/TextView;

    const/4 v5, 0x1

    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->ANIMATION_DURATION:I

    int-to-long v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;IJ)V

    .line 167
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mAnimHelper:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->animateHeightPrt()V

    .line 168
    iput-boolean v8, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mIsExtand:Z

    goto :goto_0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 521
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 537
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValue:Ljava/lang/String;

    .line 182
    iput-boolean v1, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValueSet:Z

    .line 183
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/ExpandableListPreference;->persistString(Ljava/lang/String;)Z

    .line 184
    if-nez v0, :cond_3

    .line 188
    :goto_1
    return-void

    .end local v0    # "changed":Z
    :cond_1
    move v0, v1

    .line 179
    goto :goto_0

    .line 180
    .restart local v0    # "changed":Z
    :cond_2
    iget-boolean v2, p0, Lcom/meizu/common/preference/ExpandableListPreference;->mValueSet:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/preference/ExpandableListPreference;->notifyChanged()V

    goto :goto_1
.end method
