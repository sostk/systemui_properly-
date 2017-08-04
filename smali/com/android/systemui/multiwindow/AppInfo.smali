.class public Lcom/android/systemui/multiwindow/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIndex:I

.field mLabel:Ljava/lang/CharSequence;

.field mResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/ResolveInfo;I)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p4, "index"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/multiwindow/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/multiwindow/AppInfo;->mLabel:Ljava/lang/CharSequence;

    .line 20
    iput-object p3, p0, Lcom/android/systemui/multiwindow/AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 21
    iput p4, p0, Lcom/android/systemui/multiwindow/AppInfo;->mIndex:I

    .line 17
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/multiwindow/AppInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
