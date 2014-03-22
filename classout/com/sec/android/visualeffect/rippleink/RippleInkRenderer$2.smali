.class Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;
.super Ljava/lang/Object;
.source "RippleInkRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V
    .registers 2

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/high16 v4, 0x40000000

    .line 1183
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$300(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1185
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultX:F
    invoke-static {v1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$400(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$500(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    .line 1186
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v1, v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForLandscape:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I
    invoke-static {v3}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$500(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    .line 1187
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I
    invoke-static {v1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$600(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultY:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$700(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$600(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    .line 1188
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v1, v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForLandscape:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I
    invoke-static {v3}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$600(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    .line 1197
    :goto_68
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$800(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;Z)V

    .line 1198
    const-string v0, "RippleInkRenderer"

    const-string v1, "mDefaultRunnable run, and ripple()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v1, v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v3, v3, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    const/high16 v4, 0x40800000

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    # invokes: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ripple(FFFZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$900(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;FFFZ)V

    .line 1200
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$1002(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1201
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # invokes: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setFalseDefaultEffectFlag()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$1100(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V

    .line 1202
    return-void

    .line 1191
    :cond_96
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultX:F
    invoke-static {v1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$400(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$500(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    .line 1192
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v1, v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForPortrait:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I
    invoke-static {v3}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$500(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    .line 1193
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I
    invoke-static {v1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$600(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultY:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$700(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$600(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    .line 1194
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v1, v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    iget v2, v2, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForPortrait:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I
    invoke-static {v3}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$600(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    goto/16 :goto_68
.end method
