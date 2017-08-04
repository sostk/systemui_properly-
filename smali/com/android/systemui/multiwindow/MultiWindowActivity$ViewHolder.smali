.class public Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;
.super Ljava/lang/Object;
.source "MultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mIconView:Landroid/widget/ImageView;

.field mLabelView:Landroid/widget/TextView;

.field mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/multiwindow/MultiWindowActivity;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
