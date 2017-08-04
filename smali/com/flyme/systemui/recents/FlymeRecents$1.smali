.class Lcom/flyme/systemui/recents/FlymeRecents$1;
.super Ljava/lang/Object;
.source "FlymeRecents.java"

# interfaces
.implements Lcom/flyme/systemui/recents/model/IRecentsTestModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/FlymeRecents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/flyme/systemui/recents/FlymeRecents;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/FlymeRecents;)V
    .locals 1
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/FlymeRecents;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/flyme/systemui/recents/FlymeRecents$1;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const-string/jumbo v0, "recents.TEST"

    iput-object v0, p0, Lcom/flyme/systemui/recents/FlymeRecents$1;->TAG:Ljava/lang/String;

    .line 231
    return-void
.end method


# virtual methods
.method public injectQuickChangeMotionEventDown()V
    .locals 15

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 241
    const-string/jumbo v2, "recents.TEST"

    const-string/jumbo v3, "QuickChangeMotionEvent :: Down"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v14, p0, Lcom/flyme/systemui/recents/FlymeRecents$1;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    const/high16 v6, 0x44f00000    # 1920.0f

    move-wide v2, v0

    move v7, v5

    move v8, v5

    move v9, v4

    move v10, v5

    move v11, v5

    move v12, v4

    move v13, v4

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onUpdateRecentQuickchange(Landroid/view/MotionEvent;)V

    .line 240
    return-void
.end method

.method public injectQuickChangeMotionEventPress(F)V
    .locals 15
    .param p1, "f"    # F

    .prologue
    .line 253
    const-string/jumbo v0, "recents.TEST"

    const-string/jumbo v1, "QuickChangeMotionEvent :: Press"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v14, p0, Lcom/flyme/systemui/recents/FlymeRecents$1;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x44f00000    # 1920.0f

    const/4 v4, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v7, p1

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onUpdateRecentQuickchange(Landroid/view/MotionEvent;)V

    .line 252
    return-void
.end method

.method public injectQuickChangeMotionEventUp()V
    .locals 15

    .prologue
    const-wide/16 v0, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 247
    const-string/jumbo v2, "recents.TEST"

    const-string/jumbo v3, "QuickChangeMotionEvent :: Up"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v14, p0, Lcom/flyme/systemui/recents/FlymeRecents$1;->this$0:Lcom/flyme/systemui/recents/FlymeRecents;

    const/high16 v6, 0x44f00000    # 1920.0f

    const/4 v4, 0x1

    move-wide v2, v0

    move v7, v5

    move v8, v5

    move v10, v5

    move v11, v5

    move v12, v9

    move v13, v9

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/flyme/systemui/recents/FlymeRecents;->onUpdateRecentQuickchange(Landroid/view/MotionEvent;)V

    .line 246
    return-void
.end method
