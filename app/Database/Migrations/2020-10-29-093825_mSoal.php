<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class MSoal extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id' => [
				'type' => 'INT',
				'constraint' => 11,
				'unsigned' => TRUE,
				'auto_increment' => TRUE,
			],
			'status_1_id'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '255',
			],
			'waktu_ujian'       => [
				'type'           => 'INT',
				'constraint'     => '11',
			],
			'status_2_id'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '255',
			]
		]);
		$this->forge->addKey('id', true);
		$this->forge->createTable('mSoal');
	}
	//--------------------------------------------------------------------

	public function down()
	{
		$this->forge->dropTable('mSoal');
	}
}
