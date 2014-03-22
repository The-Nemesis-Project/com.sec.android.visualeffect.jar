.class public Lcom/sec/android/visualeffect/blind/BlindEffect$QuintEaseOut;
.super Ljava/lang/Object;
.source "BlindEffect.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/blind/BlindEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuintEaseOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;


# direct methods
.method public constructor <init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V
    .registers 2

    .prologue
    .line 446
    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$QuintEaseOut;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/visualeffect/blind/BlindEffect;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$QuintEaseOut;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    return-void
.end method

.method private out(F)F
    .registers 4
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 457
    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "t"    # F

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect$QuintEaseOut;->out(F)F

    move-result v0

    return v0
.end method
