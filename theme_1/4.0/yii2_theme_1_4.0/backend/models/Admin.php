<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "admin".
 *
 * @property integer $id
 * @property string $username
 * @property string $nickname
 * @property string $email
 * @property string $profile
 * @property string $avatar
 * @property string $auth_key
 * @property string $password_hash
 * @property string $password_reset_token
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 */
class Admin extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'admin';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'nickname', 'email', 'auth_key', 'password_hash'], 'required'],
            [['profile'], 'string'],
            [['status', 'created_at', 'updated_at'], 'integer'],
            [['username', 'nickname', 'email', 'avatar', 'password_hash', 'password_reset_token'], 'string', 'max' => 255],
            [['auth_key'], 'string', 'max' => 32],
            [['username'], 'unique'],
            [['email'], 'unique'],
            [['password_reset_token'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '主键id',
            'username' => '登录名',
            'nickname' => '昵称',
            'email' => '邮箱',
            'profile' => '简介',
            'avatar' => '头像',
            'auth_key' => 'Auth_key',
            'password_hash' => '登录密码',
            'password_reset_token' => 'password_reset_token',
            'status' => '状态，10、正常，0、已删除',
            'created_at' => '创建时间',
            'updated_at' => '更新时间',
        ];
    }
}
