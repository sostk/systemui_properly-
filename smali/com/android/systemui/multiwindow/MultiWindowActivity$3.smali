.class Lcom/android/systemui/multiwindow/MultiWindowActivity$3;
.super Ljava/lang/Object;
.source "MultiWindowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/MultiWindowActivity;->createView(Landroid/content/Context;Lcom/android/systemui/multiwindow/AppInfo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/multiwindow/MultiWindowActivity;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$3;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 362
    const-string/jumbo v1, "MultiWindowActivity"

    const-string/jumbo v2, "onItemClick "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;

    .line 364
    .local v0, "holder":Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;
    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v1, "MultiWindowActivity"

    const-string/jumbo v2, "onItemClick , holder != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$3;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    iget-object v2, v0, Lcom/android/systemui/multiwindow/MultiWindowActivity$ViewHolder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v1, v2}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-wrap0(Lcom/android/systemui/multiwindow/MultiWindowActivity;Landroid/content/pm/ResolveInfo;)V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$3;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->finish()V

    .line 361
    return-void
.end method
